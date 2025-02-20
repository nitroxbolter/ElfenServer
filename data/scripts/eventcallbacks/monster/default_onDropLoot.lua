local ec = EventCallback

local function getSkillId(skillName)
    if skillName == "club" then
        return SKILL_CLUB
    elseif skillName == "sword" then
        return SKILL_SWORD
    elseif skillName == "axe" then
        return SKILL_AXE
    elseif skillName == "mining" then
        return SKILL_MINING
    elseif skillName == "crafting" then
        return SKILL_CRAFTING
    elseif skillName == "woodcutting" then
        return SKILL_WOODCUTTING
    elseif skillName == "herbalist" then
        return SKILL_HERBALIST
    elseif skillName == "armorsmith" then
        return SKILL_ARMORSMITH
    elseif skillName == "weaponsmith" then
        return SKILL_WEAPONSMITH
    elseif skillName == "jewelsmith" then
        return SKILL_JEWELSMITH
    elseif skillName:sub(1, 4) == "dist" then
        return SKILL_DISTANCE
    elseif skillName:sub(1, 6) == "shield" then
        return SKILL_SHIELD
    elseif skillName:sub(1, 4) == "fish" then
        return SKILL_FISHING
    elseif skillName:sub(1, 4) == "fist" then
        return SKILL_FIST
    elseif skillName:sub(1, 1) == "m" then
        return SKILL_MAGLEVEL
    end
    return nil
end

local function hasRelevantStats(item)
    if type(item) ~= "userdata" then
        return false
    end

    local itemType = ItemType(item:getId())
    if not itemType then
        return false
    end

    local hasWeapon = (itemType:getAttack() > 0 or itemType:getDefense() > 0)
    local hasArmor = (itemType:getArmor() > 0)
    local hasHit = (itemType:getHitChance() > 0)
    local hasAbsorb = false
    local abilities = itemType:getAbilities()

    if abilities and abilities.absorbPercent then
        for _, percent in pairs(abilities.absorbPercent) do
            if percent > 0 then
                hasAbsorb = true
                break
            end
        end
    end

    local hasSkill = false
    if abilities and abilities.skills then
        local skillTypes = {"fist", "club", "sword", "axe", "distance", "shield", "magic", "mining", "crafting", "woodcutting", "herbalist", "armorsmith", "weaponsmith", "jewelsmith"}
        for _, skillName in ipairs(skillTypes) do
            local skillId = getSkillId(skillName)
            if skillId then
                local skillValue = abilities.skills[skillId]
                if skillValue and skillValue > 0 then
                    hasSkill = true
                    break
                end
            end
        end
    end

    local hasSpecialSkill = false
    local specialSkillTypes = {"criticalHitChance", "criticalHitAmount", "manaLeechChance", "manaLeechAmount", "lifeLeechChance", "lifeLeechAmount"}
    if abilities and abilities.specialSkills then
        for _, spec in ipairs(specialSkillTypes) do
            if abilities.specialSkills[spec] and abilities.specialSkills[spec] > 0 then
                hasSpecialSkill = true
                break
            end
        end
    end

    return (hasWeapon or hasArmor or hasHit or hasAbsorb or hasSkill or hasSpecialSkill)
end

local rarities = {
    { id = 1, chance = 15.0, name = "Common" },
    { id = 2, chance = 14.0, name = "Uncommon" },
    { id = 3, chance = 12.0, name = "Rare" },
    { id = 4, chance = 10.0, name = "Epic" },
    { id = 5, chance = 8.5,  name = "Legendary" },
    { id = 6, chance = 7.0,  name = "Exotic" },
    { id = 7, chance = 6.0,  name = "Mythic" },
    { id = 8, chance = 4.5,  name = "Chaos" },
    { id = 9, chance = 3.8,  name = "Eternal" },
    { id = 10, chance = 3.0, name = "Divine" },
    { id = 11, chance = 2.3, name = "Phantasmal" },
    { id = 12, chance = 1.7, name = "Celestial" },
    { id = 13, chance = 1.2, name = "Cosmic" },
    { id = 14, chance = 0.8, name = "Abyssal" },
    { id = 15, chance = 0.5, name = "Transcendent" }
}

local function rollRarity()
    if math.random(100) > 20 then
        return 0
    end
    for _, r in ipairs(rarities) do
        if math.random(100) <= r.chance then
            return r.id
        end
    end
    return 0
end

local function getRarityName(rarityId)
    for _, data in ipairs(rarities) do
        if data.id == rarityId then
            return data.name
        end
    end
    return "Common"
end

local function getCustomLootDescription(corpse)
    local parts = {}
    for slot = 0, corpse:getSize() - 1 do
        local item = corpse:getItem(slot)
        if type(item) == "userdata" and item:isItem() then
            local count = item:getCount()
            local baseName = ItemType(item:getId()):getName()
            local rarityId = item:getCustomAttribute("rarity")
            if rarityId and rarityId > 0 then
                local prefix = string.format("[%s] ", getRarityName(rarityId))
                baseName = prefix .. baseName
            end
            if count > 1 then
                baseName = string.format("%dx %s", count, baseName)
            end
            table.insert(parts, baseName)
        end
    end
    return table.concat(parts, ", ")
end

ec.onDropLoot = function(self, corpse)
    local mType = self:getType()
    local player = Player(corpse:getCorpseOwner())

    if not player then
        return
    end

    if player:getStamina() <= 840 then
        local noLootText = ("Loot of %s: nothing (due to low stamina)"):format(mType:getNameDescription())
        local party = player:getParty()
        if party then
            party:broadcastPartyLoot(noLootText)
        else
            player:sendTextMessage(MESSAGE_LOOT, noLootText)
        end
        return
    end

    local monsterLevel = self:getMonsterLevel()
    local lootMultiplier = 1

    if monsterLevel >= 0 and monsterLevel < 4 then
        lootMultiplier = 1
    elseif monsterLevel >= 5 and monsterLevel < 50 then
        lootMultiplier = 1.15
    elseif monsterLevel >= 51 and monsterLevel < 100 then
        lootMultiplier = 1.35
    elseif monsterLevel >= 101 and monsterLevel < 200 then
        lootMultiplier = 1.65
    elseif monsterLevel >= 201 and monsterLevel < 300 then
        lootMultiplier = 1.95
    elseif monsterLevel >= 301 and monsterLevel < 500 then
        lootMultiplier = 2.25
    elseif monsterLevel >= 501 and monsterLevel < 10000 then
        lootMultiplier = 2.70
    end

    if player:getStorageValue(76855) == 1 then
        lootMultiplier = lootMultiplier + 1.15
    elseif player:getStorageValue(76855) == 2 then
        lootMultiplier = lootMultiplier + 1.35
    elseif player:getStorageValue(76855) == 3 then
        lootMultiplier = lootMultiplier + 1.65
    elseif player:getStorageValue(76855) == 4 then
        lootMultiplier = lootMultiplier + 1.95
    elseif player:getStorageValue(76855) == 5 then
        lootMultiplier = lootMultiplier + 2.25
    elseif player:getStorageValue(76855) == 6 then
        lootMultiplier = lootMultiplier + 2.70
    end

    local monsterLoot = mType:getLoot()
    for i = 1, #monsterLoot do
        local lootData = monsterLoot[i]
        local iterationCount = math.floor(lootMultiplier)
        if iterationCount < 1 then
            iterationCount = 1
        end
        for _ = 1, iterationCount do
            if math.random(1, 100000) <= lootData.chance then
                local minCount = lootData.minCount or 1
                local maxCount = lootData.maxCount or (lootData.count or 1)
                local count = math.random(minCount, maxCount)
                local adjustedCount = math.floor(count * lootMultiplier)
                if adjustedCount < 1 then adjustedCount = 1 end
                
                local newItem = corpse:addItem(lootData.itemId, adjustedCount)
                if newItem then
                    if hasRelevantStats(newItem) then
                        local rarityId = rollRarity()
                        if rarityId > 0 then
                            newItem:setCustomAttribute("rarity", rarityId)
                        end
                    end
                end
            end
        end
    end

    if math.random(1, 100) <= 3 then
        local quantity28343 = math.random(1, 5)
        local specialItem1 = corpse:addItem(28343, quantity28343)
        if not specialItem1 then
            print(string.format("[ExtraLoot] - Could not add item 28343 to %s's corpse.", self:getName()))
        end
        local quantity28344 = math.random(1, 3)
        local specialItem2 = corpse:addItem(28344, quantity28344)
        if not specialItem2 then
            print(string.format("[ExtraLoot] - Could not add item 28344 to %s's corpse.", self:getName()))
        end
    end

    local description = getCustomLootDescription(corpse)
    if description == "" then
        description = "nothing"
    end

    local text = ("Loot of %s: %s"):format(mType:getNameDescription(), description)
    local party = player:getParty()
    if party then
        party:broadcastPartyLoot(text)
    else
        player:sendTextMessage(MESSAGE_LOOT, text)
    end
end

ec:register()