local repairMachines = Action()

function repairMachines.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local repairMachines = player:getStorageValue(Expeditions.BrokenMachines)
    local cooldown = player:getStorageValue(Expeditions.BrokenMachinesCooldown)
    if player:getStorageValue(Expeditions.BrokenMachinesCheck) == 1 then
        if cooldown < os.time() then
            if player:getStorageValue(Expeditions.BrokenMachines) < 10 then
            local chance = math.random(1,8)
            local randomMonsters = {
                "mystic baguemage",
                "sunfang croaker",
            }
            if chance < 4 then
                local numberOfMonsters = math.random(1, 2)
                player:setNoMove(true)
                
                addEvent(function()
                    player:setNoMove(false)
                    for i = 1, numberOfMonsters do
                        local monsterName = randomMonsters[math.random(1, #randomMonsters)]
                        Game.createMonster(monsterName, toPosition)
                    end
                    
                    SendMagicEffect(toPosition, 347)
                    player:setStorageValue(Expeditions.BrokenMachines, repairMachines + 1)
                    player:setStorageValue(Expeditions.BrokenMachinesCooldown, os.time() + 45)
                end, 2300)
                
                SendMagicEffect(player:getPosition(), 176)
            else
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    local monsterName = randomMonsters[math.random(1, #randomMonsters)]
                    local monster = Game.createMonster(monsterName, toPosition)
                    
                    if monster then
                    SendMagicEffect(toPosition, 347)
                    player:setStorageValue(Expeditions.BrokenMachines, repairMachines + 1)
                    player:setStorageValue(Expeditions.BrokenMachinesCooldown, os.time() + 45)
                    end
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
            end
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have repaired 10 broken machines, go back to Rinling.")
        end
    else
        player:say("You can repair the machine again in " .. (cooldown - os.time()) .. " seconds.", TALKTYPE_MONSTER_SAY)
    end
    else
        return true
end
return true
end

repairMachines:aid(42393)
repairMachines:register()