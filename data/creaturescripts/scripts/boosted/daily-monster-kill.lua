function onKill(creature, target)
    if not creature or not target then
        return true
    end
    local targetMonster = Monster(target)
    if not targetMonster or targetMonster:isPlayer() or targetMonster:getMaster() then
        return true
    end
    local boostedMonsterIndex = getGlobalStorageValue(PlayerStorageKeys.boostedCreature)
    if boostedMonsterIndex > 0 and boostedMonsterIndex <= #boostedMonsterList then
        local boostedMonster = boostedMonsterList[boostedMonsterIndex]
        if target:getName():lower() == boostedMonster:lower() then
            local damageMap = targetMonster:getDamageMap()
            for pid, dmg in pairs(damageMap) do
                local player = Player(pid)
                if player then
                    local exp = math.floor(targetMonster:getType():getExperience() * (Game.getExperienceStage(player:getLevel()) / 1))
                    player:addExperience(exp, true)
                    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'You contributed to killing a boosted ' .. boostedMonster)
                end
            end
        end
    end

    return true
end
