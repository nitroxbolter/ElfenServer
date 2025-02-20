local itemUpgrader = Action()
print(">> Upgrade System Loaded")
local conf = {
    ["level"] = {
        [0] = {successPercent = 1, downgradeLevel = 0, levelItem = 10},
        [1] = {successPercent = 95, downgradeLevel = 0, levelItem = 10},
        [2] = {successPercent = 80, downgradeLevel = 1, levelItem = 20},
        [3] = {successPercent = 70, downgradeLevel = 2, levelItem = 30},
        [4] = {successPercent = 60, downgradeLevel = 3, levelItem = 40},
        [5] = {successPercent = 50, downgradeLevel = 4, levelItem = 50},
        [6] = {successPercent = 45, downgradeLevel = 5, levelItem = 60},
        [7] = {successPercent = 40, downgradeLevel = 6, levelItem = 70},
        [8] = {successPercent = 35, downgradeLevel = 7, levelItem = 80},
        [9] = {successPercent = 30, downgradeLevel = 8, levelItem = 90},
        [10] = {successPercent = 24, downgradeLevel = 9, levelItem = 100},
        [11] = {successPercent = 16, downgradeLevel = 10, levelItem = 110},
        [12] = {successPercent = 12, downgradeLevel = 11, levelItem = 120},
        [13] = {successPercent = 9, downgradeLevel = 12, levelItem = 130},
        [14] = {successPercent = 7, downgradeLevel = 13, levelItem = 140},
        [15] = {successPercent = 3, downgradeLevel = 14, levelItem = 150},
    },
    
    ["upgrade"] = {
        attack = 1,
        defense = 1,
        armor = 1,
        hitChance = 1,
    }
}

local upgrading = {
    upValue = function(value, level, percent)
        if value < 0 then return 0 end
        if level == 0 then return value end
        local nVal = value
        for i = 1, level do
            nVal = nVal + (math.ceil((nVal / 100 * percent)))
        end
        return nVal > 0 and nVal or value
    end,

    getLevel = function(item)
        local name = Item(item):getName():split('+')
        if (#name == 1) then
            return 0
        end
        return math.abs(name[2])
    end,
}


function getSuccessModifier(player)
    local modifiers = {
        [4444] = 10,
        [5555] = 15,
        [6666] = 20,
        [2146] = 50
    }
    
    for itemId, increment in pairs(modifiers) do
        if player:getItemCount(itemId) > 0 then
            return increment, itemId
        end
    end
    return 0, nil 
end

local Attr = {}
Attr.__index = Attr
Attr.init = function(slot)
 local attr = {}
 setmetatable(attr, Attr)
 attr.name = slot.name
 attr.value = slot.value
 attr.percent = slot.percent
 return attr
end
setmetatable(Attr, {
 __call = function(_, ...) return Attr.init(...) end,
 __eq = function(a, b) return a.name == b.name and a.value == b.value and a.percent == b.percent end
})

local slotAttribute = {}
local upgradeCooldown = {}
slotAttribute.maxSlots = 3
slotAttribute.baseSubids = 90
slotAttribute.cache = {}

slotAttribute.attributes = {
    { name = "Club", values = { 1, 2, 3 }, percent = false },
    { name = "Sword", values = { 1, 2, 3 }, percent = false },
    { name = "Axe", values = { 1, 2, 3 }, percent = false },
    { name = "Distance", values = { 1, 2, 3 }, percent = false },
    { name = "Shield", values = { 1, 2, 3 }, percent = false },
    { name = "MagicLevel", values = { 1, 2, 3 }, percent = false },
}

slotAttribute.conditions = {
    ["Club"] = {Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_CLUB},
    ["Sword"] = {Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_SWORD},
    ["Axe"] = {Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_AXE},
    ["Distance"] = {Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_DISTANCE},
    ["MagicLevel"] = {Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_STAT_MAGICPOINTS},
    ["Shield"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_SHIELD },
}

function slotAttribute.applyConditions(player, slots, slotIndex)
    for index, slot in pairs(slots) do
        local subid = slotAttribute.baseSubids + slotIndex + (CONST_SLOT_AMMO * index)
        local conditionInfo = slotAttribute.conditions[slot.name]
        if conditionInfo then
            local condition = Condition(conditionInfo.Type, CONDITIONID_DEFAULT)
            condition:setParameter(conditionInfo.Attr, slot.value)
            condition:setParameter(CONDITION_PARAM_TICKS, -1)
            condition:setParameter(CONDITION_PARAM_SUBID, subid)
            player:addCondition(condition)
        end
    end
end

slotAttribute.getItemSlots = function(item)
    local slots = {}
    for slot in string.gmatch(Item.getDescription(item), "(%[.-%])") do
    local name = string.match(slot, "%[(%a+)%p")
        local value = tonumber(string.match(slot, "%p(%d+)%]"))
        local valuePercent = tonumber(string.match(slot, "%p(%d+)%%+%]"))
        slots[#slots + 1] = {
        name = name,
        value = value,
        valuePercent = valuePercent
        }
    end
    return slots
   end
   

slotAttribute.addItemSlot = function(item, attributeName)
    local slots = slotAttribute.getItemSlots(item)
    local replace = #slots >= slotAttribute.maxSlots
    local slot = nil
    for _, attr in ipairs(slotAttribute.attributes) do
        if attr.name == attributeName then
            slot = attr
            break
        end
    end

    if not slot then
        return false
    end

    local slotIndex = not replace and #slots + 1 or math.random(1, slotAttribute.maxSlots)
    local newvalue = slot.values[math.random(1, #slot.values)]
    local oldvalue = replace and slots[slotIndex].value or newvalue
    slots[slotIndex] = {
        name = slot.name,
        value = not slot.percent and newvalue,
        valuePercent = slot.percent and newvalue,
    }
    slotAttribute.setItemSlots(item, slots)
    return newvalue >= oldvalue
end


slotAttribute.setItemSlots = function(item, slots)
    local baseDescription = ItemType.getDescription(ItemType(Item.getId(item))) or ""
    local currentDescription = item:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION) or ""

    local slotDescriptions = {}
    for _, slot in pairs(slots) do
        table.insert(slotDescriptions, string.format("[%s+%u%s]", slot.name, slot.value or slot.valuePercent, slot.valuePercent and "%" or ""))
    end

    local finalDescription = baseDescription
    if currentDescription ~= "" then
        finalDescription = finalDescription .. " " .. currentDescription
    end
    if #slotDescriptions > 0 then
        finalDescription = finalDescription .. " " .. table.concat(slotDescriptions, ", ")
    end

    return Item.setAttribute(item, ITEM_ATTRIBUTE_DESCRIPTION, finalDescription)
end



slotAttribute.isUpgradeable = function(item)
    local it = ItemType(item.itemid)
    return it:getWeaponType() ~= WEAPON_NONE or it:getArmor() > 0 or it:getDefense() > 0 or it:getExtraDefense() > 0 or it:getAttack() > 0
end

slotAttribute.onSlotEquip = function(player, slots, slotIndex)
    for index, slot in pairs(slots) do
        local attr = Attr(slot)
        local subid = slotAttribute.baseSubids + slotIndex + (CONST_SLOT_AMMO * index)
        if not slotAttribute.cache[player.uid][subid] or slotAttribute.cache[player.uid][subid] ~= attr then
            if slotAttribute.cache[player.uid][subid] and slotAttribute.cache[player.uid][subid] ~= attr then
                player:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_DEFAULT, subid, true)
                player:removeCondition(CONDITION_HASTE, CONDITIONID_DEFAULT, subid, true)
                player:removeCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, subid, true)
            end
        local info = slotAttribute.conditions[attr.name]
            if info then
                local condition = Condition(info.Type, CONDITIONID_DEFAULT)
                    if condition then
                        condition:setParameter(info.Attr, attr.value)
                        condition:setParameter(CONDITION_PARAM_TICKS, -1)
                        condition:setParameter(CONDITION_PARAM_SUBID, subid)
                        player:addCondition(condition)
                        slotAttribute.cache[player.uid][subid] = attr
                    end
            end
        end
    end
end

local vocationAttributes = {
    ["Guerreiro"] = {"Axe", "Club", "Sword", "Shield"},
    ["Barbaro"] = {"Axe", "Club", "Sword", "Shield"},
    ["Paladino"] = {"Distance", "Shield"},
    ["Templario"] = {"Distance", "Shield"},
    ["Sorcerer"] = {"MagicLevel", "Shield"},
    ["Mago"] = {"MagicLevel", "Shield"},
    ["Druid"] = {"MagicLevel", "Shield"},
    ["Alquimista"] = {"MagicLevel", "Shield"},
    ["Illusionist"] = {"MagicLevel", "Shield"},
    ["Arch Illusionist"] = {"MagicLevel", "Shield"},
}

function stringVocations(vocationString)
    local vocationMap = {
        ["Guerreiros"] = "Guerreiro",
        ["Barbaros"] = "Barbaro",
        ["Paladinos"] = "Paladino",
        ["Templarios"] = "Templario",
        ["sorcerers"] = "Sorcerer",
        ["Magos"] = "Mago",
        ["druids"] = "Druid",
        ["Alquimistas"] = "Alquimista",
        ["illusionists"] = "Illusionist",
        ["arch illusionists"] = "Arch Illusionist",
    }
    for key, value in pairs(vocationMap) do
        if vocationString:lower():find(key) then
            return value
        end
    end
    return nil
end

function getItemVocations(item)
    local vocations = {}
    local description = item:getDescription():lower()
    for vocationString in description:gmatch("(%a[%a%s]*%a) of level %d+") do
        local normalizedVocation = stringVocations(vocationString)
        if normalizedVocation then
            table.insert(vocations, normalizedVocation)
        end
    end
    return vocations
end

function getVocationAttributes(vocations)
    local attributes = {}
    for _, vocation in ipairs(vocations) do
        local vocationAttributeList = vocationAttributes[vocation]
        if vocationAttributeList then
            for _, attribute in ipairs(vocationAttributeList) do
                if not table.contains(attributes, attribute) then
                    table.insert(attributes, attribute)
                end
            end
        else
            return
        end
    end
    return attributes
end

local function updateLevelDescription(itemEx)
    local nLevel = upgrading.getLevel(itemEx.uid)
    local newCustomLevel = conf["level"][nLevel] and conf["level"][nLevel].levelItem or 0
    local finalLevel = newCustomLevel

    itemEx:setCustomAttribute("combatPowerLevel", finalLevel)

    local currentDescription = itemEx:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION) or ""

    local updatedDescription
    if currentDescription:find("Level:%s*%d+") then
        updatedDescription = currentDescription:gsub("Level:%s*%d+", "Level: " .. finalLevel)
    else
        updatedDescription = currentDescription .. "\nLevel: " .. finalLevel
    end

    itemEx:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, updatedDescription)
end

function itemUpgrader.onUse(player, item, fromPosition, itemEx, toPosition)
    local playerId = player:getId()
    local currentTime = os.time()
    if upgradeCooldown[playerId] and currentTime - upgradeCooldown[playerId] < 5 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to wait a few seconds before upgrading again.")
        return false
    end
    local it = ItemType(itemEx.itemid)
    if not (((it:getWeaponType() > 0 and it:getWeaponType() ~= WEAPON_WAND) or getItemAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR) > 0) and not isItemStackable(itemEx.itemid)) then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot upgrade this item.")
        return false
    end

    local level = upgrading.getLevel(itemEx.uid)
    local successModifier, itemToRemove = getSuccessModifier(player)
    local nLevel = nil

    if item.itemid == 29619 and level < 5 then
        local successPercent = conf["level"][level + 1].successPercent + successModifier
        nLevel = (successPercent >= math.random(1, 100)) and (level + 1) or conf["level"][level].downgradeLevel
    elseif item.itemid == 29620 and level >= 5 and level < 10 then
        local successPercent = conf["level"][level + 1].successPercent + successModifier
        nLevel = (successPercent >= math.random(1, 100)) and (level + 1) or conf["level"][level].downgradeLevel
    elseif item.itemid == 29621 and level >= 10 and level < 13 then
        local successPercent = conf["level"][level + 1].successPercent + successModifier
        nLevel = (successPercent >= math.random(1, 100)) and (level + 1) or conf["level"][level].downgradeLevel
    elseif item.itemid == 29622 and level >= 13 and level < 15 then
        local successPercent = conf["level"][level + 1].successPercent + successModifier
        nLevel = (successPercent >= math.random(1, 100)) and (level + 1) or conf["level"][level].downgradeLevel
    elseif item.itemid == 29622 and level == 15 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Your item is already at max level.")
        return false
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot upgrade this item with this rune.")
        return false
    end

    local newLevelItem = conf["level"][nLevel] and conf["level"][nLevel].levelItem or 0

    if nLevel > level then
        player:getPosition():sendMagicEffect(210)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Upgrade your " .. it:getName() .. " to level " .. nLevel .. " successful!")

        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_NAME, it:getName() .. ((nLevel > 0) and " +" .. nLevel or ""))
        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ATTACK, upgrading.upValue(it:getAttack(), nLevel, conf["upgrade"].attack))
        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DEFENSE, upgrading.upValue(it:getDefense(), nLevel, conf["upgrade"].defense))
        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR, upgrading.upValue(it:getArmor(), nLevel, conf["upgrade"].armor))
        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_HITCHANCE, upgrading.upValue(it:getHitChance(), nLevel, conf["upgrade"].hitChance))
        itemEx:setCustomAttribute("combatPowerLevel", newLevelItem)
        updateLevelDescription(itemEx)

        local actualLevel = item:getCustomAttribute("combatPowerLevel") or 0
        local currentDescription = item:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION) or ""
        local existingLevel = tonumber(currentDescription:match("Level: (%d+)")) or nil
        if existingLevel ~= actualLevel then
            local updatedDescription
                if existingLevel then
                    updatedDescription = currentDescription:gsub("Level: %d+", "Level: " .. actualLevel)
                else
                    updatedDescription = currentDescription .. "\nLevel: " .. actualLevel
            end
            item:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, updatedDescription)
        end
    else
        local downgradeLevels = level - nLevel
        local attackDecrement = downgradeLevels * conf["upgrade"].attack
        local defenseDecrement = downgradeLevels * conf["upgrade"].defense
        local armorDecrement = downgradeLevels * conf["upgrade"].armor
        local hitChanceDecrement = downgradeLevels * conf["upgrade"].hitChance

        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_NAME, it:getName() .. ((nLevel > 0) and " +" .. nLevel or ""))
        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ATTACK, math.max(it:getAttack() - attackDecrement, 0))
        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DEFENSE, math.max(it:getDefense() - defenseDecrement, 0))
        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR, math.max(it:getArmor() - armorDecrement, 0))
        doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_HITCHANCE, math.max(it:getHitChance() - hitChanceDecrement, 0))

        player:getPosition():sendMagicEffect(212)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Upgrade failed. Your " .. it:getName() .. " is now on level " .. nLevel .. "")
    end

    if itemToRemove then
        player:removeItem(itemToRemove, 1)
    end
    
    upgradeCooldown[playerId] = currentTime
    if nLevel == 13 or nLevel == 15 then
        local existingSlots = slotAttribute.getItemSlots(itemEx)
        local currentSlotCount = #existingSlots
        local maxAllowedSlots = math.floor((nLevel - 11) / 2) + 1
    
        if currentSlotCount >= maxAllowedSlots then
            return false
        end
    
        local vocations = getItemVocations(itemEx)
        if #vocations == 0 then
            return false
        end
    
        local attributes = getVocationAttributes(vocations)
        if #attributes == 0 then
            return false
        end
    
        local attributeIndex = math.random(1, #attributes)
        local attributeName = attributes[attributeIndex]
    
        if not attributeName then
            return false
        end
    
        local success = slotAttribute.addItemSlot(itemEx, attributeName)
        if success then
            player:say("Additional Attribute added on item: " .. attributeName .. "!")
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Failed to add the additional attribute, if item has already reached the maximum number of slots (3) then you cannot add additional attributes.")
        end
    end
end

slotAttribute.autoDetection = function(playerId)
    local player = Player(playerId)
        if player then
            if not slotAttribute.cache[playerId] then
                slotAttribute.cache[playerId] = {}
            end
            for slot = CONST_SLOT_HEAD, CONST_SLOT_GLOVES do
                local item = player:getSlotItem(slot)
                    if item then
                        local slots = slotAttribute.getItemSlots(item)
                        slotAttribute.onSlotEquip(player, slots, slot)
                            if #slots < slotAttribute.maxSlots then
                                for index = #slots+1, slotAttribute.maxSlots do
                                    local subid = slotAttribute.baseSubids + slot + (CONST_SLOT_GLOVES * index)
                                        player:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_DEFAULT, subid, true)
                                        player:removeCondition(CONDITION_HASTE, CONDITIONID_DEFAULT, subid, true)
                                        player:removeCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, subid, true)
                                end
                            end
                    else
                        for index = 1, slotAttribute.maxSlots do
                            local subid = slotAttribute.baseSubids + slot + (CONST_SLOT_GLOVES * index)
                            player:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_DEFAULT, subid, true)
                            player:removeCondition(CONDITION_HASTE, CONDITIONID_DEFAULT, subid, true)
                            player:removeCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, subid, true)
                        end
                    end
            end
            addEvent(slotAttribute.autoDetection, 100, playerId)
        else
            slotAttribute.cache[playerId] = nil
    end
end

local creatureEvent = CreatureEvent()

function creatureEvent.onLogin(player)
    slotAttribute.autoDetection(player.uid)
    return true
end

creatureEvent:register()
itemUpgrader:id(29619, 29620, 29621, 29622)
itemUpgrader:register()

---- SCRIPT NOT USED: Is for delete the Slots from an upgrade item, in case removing the Upgrade with the next script it will replace the item with a new one, in that case is removing everything from the item.

-- local slotRemover = Action()

-- slotRemover.onUse = function(player, item, fromPosition, itemEx, toPosition)
--     if not itemEx or not itemEx:isItem() then
--         player:sendCancelMessage("You need to use this on an item.")
--         return false
--     end

--     local existingSlots = slotAttribute.getItemSlots(itemEx)
--     if #existingSlots == 0 then
--         player:sendCancelMessage("This item has no additional attributes to remove.")
--         return false
--     end

--     local removableSlots = { "MagicLevel", "Distance", "Axe", "Club", "Shield" }
--     local updatedSlots = {}

--     for _, slot in ipairs(existingSlots) do
--         if not table.contains(removableSlots, slot.name) then
--             table.insert(updatedSlots, slot)
--         end
--     end

--     slotAttribute.setItemSlots(itemEx, updatedSlots)

--     local it = ItemType(itemEx.itemid)
--     local refinedDescription = "\nRefined by " .. player:getName() .. "."
--     doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DESCRIPTION, it:getDescription() .. refinedDescription)

--     if #existingSlots > #updatedSlots then
--         player:sendTextMessage(MESSAGE_INFO_DESCR, "All removable additional attributes have been cleared from the item.")
--         player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
--     else
--         player:sendTextMessage(MESSAGE_INFO_DESCR, "No additional attributes were removed.")
--     end

--     doRemoveItem(item.uid, 1)

--     return true
-- end

-- slotRemover:id(214700)
-- slotRemover:register()



local levelRemover = Action()

levelRemover.onUse = function(player, item, fromPosition, itemEx, toPosition)
    if not itemEx or not itemEx:isItem() then
        player:sendCancelMessage("You need to use this on an item with rarity or upgrade level.")
        return false
    end

    local itemName = itemEx:getName()
    local baseName = itemName:match("^(.-) %+(%d+)$") or itemName
    local level = tonumber(itemName:match("%+(%d+)$"))
    local hasUpgradeLevel = (level and level > 0) or (itemEx:getCustomAttribute("rarity") ~= nil)

    if not hasUpgradeLevel then
        player:sendCancelMessage("This item has no upgrade levels to remove or doesn't have a rarity.")
        return false
    end

    if itemEx:getCustomAttribute("rarity") then
        local itemId = itemEx:getId()
        itemEx:remove()
        local newItem = player:addItem(itemId)
        if newItem then
            player:sendTextMessage(MESSAGE_INFO_DESCR,
                "Upgrade removed! You received a clean version of your item: " .. baseName .. ".")
            player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
        else
            player:sendCancelMessage("You can't carry an item, please verify your inventory space.")
        end

        item:remove(1)
        return true
    end

    local itemId = itemEx:getId()
    itemEx:remove()
    local newItem = player:addItem(itemId)
    if newItem then
        player:sendTextMessage(MESSAGE_INFO_DESCR,
            "Upgrade removed! You received a clean version of your item: " .. baseName .. ".")
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
    else
        player:sendCancelMessage("You can't carry an item, please verify your inventory space.")
    end

    item:remove(1)
    return true
end

levelRemover:id(29623)
levelRemover:register()
