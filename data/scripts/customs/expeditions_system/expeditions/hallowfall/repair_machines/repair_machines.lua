local repairMachines = Action()

function repairMachines.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local repairMachines = player:getStorageValue(Expeditions.RepairMachines)
    local cooldown = player:getStorageValue(Expeditions.RepairMachinesCooldown)
    if player:getStorageValue(Expeditions.RepairMachinesCheck) == 1 then
        if cooldown < os.time() then
            if player:getStorageValue(Expeditions.RepairMachines) < 10 then
            local chance = math.random(1,8)
            local randomMonsters = {
                "bogspike lancer",
                "mossblade hopper",
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
                    
                    SendMagicEffect(toPosition, 346)
                    player:setStorageValue(Expeditions.RepairMachines, repairMachines + 1)
                    player:setStorageValue(Expeditions.RepairMachinesCooldown, os.time() + 45)
                end, 2300)
                
                SendMagicEffect(player:getPosition(), 176)
            else
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    local monsterName = randomMonsters[math.random(1, #randomMonsters)]
                    local monster = Game.createMonster(monsterName, toPosition)
                    
                    if monster then
                    SendMagicEffect(toPosition, 346)
                    player:setStorageValue(Expeditions.RepairMachines, repairMachines + 1)
                    player:setStorageValue(Expeditions.RepairMachinesCooldown, os.time() + 45)
                    end
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
            end
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have repaired 10 machines, go back to Zidormi.")
        end
    else
        player:say("You can repair the machine again in " .. (cooldown - os.time()) .. " seconds.", TALKTYPE_MONSTER_SAY)
    end
    else
        return true
end
return true
end

repairMachines:aid(42392)
repairMachines:register()