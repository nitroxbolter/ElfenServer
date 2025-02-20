local monsters = {
    ["frosted dragon"] = {storage = 43103},
    ["frost larva"] = {storage = 43103},
    ["frost hydra"] = {storage = 43103},
}

local frotsMonsters = CreatureEvent("frostsMonstersKill")
function frotsMonsters.onKill(creature, target)
    local targetMonster = target:getMonster()
    if not targetMonster or targetMonster:getMaster() then
        return true
    end

    local monsterConfig = monsters[targetMonster:getName():lower()]
    if not monsterConfig then
        return true
    end

    for key, value in pairs(targetMonster:getDamageMap()) do
        local attackerPlayer = Player(key)
        if attackerPlayer then
            local currentKills = attackerPlayer:getStorageValue(monsterConfig.storage)
            
            if currentKills < 0 then
                currentKills = 0
            end
            
            currentKills = currentKills + 1
            attackerPlayer:setStorageValue(monsterConfig.storage, currentKills)
            
            if currentKills >= 30 then
                attackerPlayer:say("You have killed 30 Frost's Monsters, go back to Ziriak!", TALKTYPE_MONSTER_SAY)
            else
                attackerPlayer:say("You have killed "..currentKills.." Frost's Monsters. "..(30 - currentKills).." remaining to complete the expedition!", TALKTYPE_MONSTER_SAY)
            end
        end
    end

    return true
end

frotsMonsters:register()
