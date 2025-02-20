local monsters = {
    ["giant lursk spider"] = {storage = 43102},
    ["small lursk spider"] = {storage = 43102},
}

local lurskSpiders = CreatureEvent("lurskSpidersDeath")
function lurskSpiders.onKill(creature, target)
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
            
            if currentKills >= 20 then
                attackerPlayer:say("You have killed 20 Lursk\'s Spiders go back to Yorda!", TALKTYPE_MONSTER_SAY)
            else
                attackerPlayer:say("You have killed "..currentKills.." Lursk\'s Spiders. "..(20 - currentKills).." remaining to complete the expedition!", TALKTYPE_MONSTER_SAY)
            end
        end
    end

    return true
end

lurskSpiders:register()
