local config = {
    ["bakragore"] = {
        chance = 3000, tiers = {
            [{   1,  10000}] = {tier = {"sanguine", true}, effect = {191, true}, itemList = {
                {27459, 1, 1, 2000}, {27461, 1, 1, 2000}, {27463, 1, 1, 2000},
                {27465, 1, 1, 2000}, {27467, 1, 1, 2000}, {27469, 1, 1, 2000},
                {27472, 1, 1, 2000}, {27474, 1, 1, 2000}, {27477, 1, 1, 2000},
                {27480, 1, 1, 2000}
            }},
        }
    },
}

local creatureevent = CreatureEvent("onDeath_Bakragore")

function creatureevent.onDeath(creature, corpse, killer, mostDamageKiller, lastHitUnjustified, mostDamageUnjustified)
    local monster = config[creature:getName():lower()]
    if monster then
        local player = killer:isPlayer() and killer or mostDamageKiller:isPlayer() and mostDamageKiller or nil
        if player then
            local storages = {345000, 345001, 345002, 345003}
            local hasStorage = false
            for _, storage in ipairs(storages) do
                if player:getStorageValue(storage) == 1 then
                    hasStorage = true
                    break
                end
            end

            if not hasStorage then
                return true 
            end

            local storageCount = 0
            for _, storage in ipairs(storages) do
                if player:getStorageValue(storage) == 1 then
                    storageCount = storageCount + 1
                end
            end

            local adjustedChance = monster.chance
            if storageCount == 1 then
                adjustedChance = 5000
            elseif storageCount == 2 then
                adjustedChance = 10000
            elseif storageCount == 3 then
                adjustedChance = 15000
            elseif storageCount == 4 then
                adjustedChance = 20000
            end

            adjustedChance = math.min(adjustedChance, 20000)
            monster.chance = adjustedChance
        end
        if corpse:getEmptySlots() > 0 then
            if math.random(10000) > monster.chance then
                return true
            end
            local rand = math.random(10000)
            for chance, index in pairs(monster.tiers) do
                if chance[1] <= rand and chance[2] >= rand then
                    local rewardItems = {}
                    for i = 1, #index.itemList do
                        if math.random(10000) <= index.itemList[i][4] then
                            rewardItems[#rewardItems + 1] = i
                        end
                    end
                    if rewardItems[1] then
                        rand = math.random(#rewardItems)
                        corpse:addItem(index.itemList[rewardItems[rand]][1], math.random(index.itemList[rewardItems[rand]][2], index.itemList[rewardItems[rand]][3]))
                        if index.tier[2] == true then
                            creature:say(index.tier[1], TALKTYPE_MONSTER_SAY, false, nil, creature:getPosition())
                        end
                        if index.effect[2] == true then
                            local position = creature:getPosition()
                            for i = 1, 4 do
                                addEvent(function() position:sendMagicEffect(index.effect[1]) end, (i - 1) * 500)
                            end
                        end
                        player:setStorageValue(345000, 0)
                        player:setStorageValue(345001, 0)
                        player:setStorageValue(345002, 0)
                        player:setStorageValue(345003, 0)
                        playSound(player, "loot_enhanced.ogg")
                    end
                    return true
                end
            end
        end
    end
    return true
end

creatureevent:register()
