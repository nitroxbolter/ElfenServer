local tombsOfDorn = Action()

function tombsOfDorn.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local tombs = player:getStorageValue(Expeditions.TombsOfDorn)
    if player:getStorageValue(Expeditions.TombsOfDornCheck) == 1 then
        if player:getStorageValue(Expeditions.TombsOfDorn) < 12 then
            local chance = math.random(1,3)
            if chance == 1 then
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    local tombZombie = Game.createMonster("Tomb Zombie", item:getPosition())
                    local tombZombie2 = Game.createMonster("Tomb Zombie", item:getPosition())
                    local tombZombie3 = Game.createMonster("Tomb Zombie", item:getPosition())
                    if not tombZombie then
                        return true
                    end
                    if not tombZombie2 then
                        return true
                    end
                    if not tombZombie3 then
                        return true
                    end
                    SendMagicEffect(toPosition, 187)
                    player:setStorageValue(Expeditions.TombsOfDorn, tombs + 1)
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
            else
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    local tombZombie = Game.createMonster("Tomb Zombie", item:getPosition())
                    local tombZombie2 = Game.createMonster("Tomb Zombie", item:getPosition())
                    if not tombZombie then
                        return true
                    end
                    if not tombZombie2 then
                        return true
                    end
                    SendMagicEffect(toPosition, 187)
                    player:setStorageValue(Expeditions.TombsOfDorn, tombs + 1)
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
            end
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You completed the Tombs Expedition, go back to Murik.")
        end
    else
        return true
    end
end

tombsOfDorn:aid(42389)
tombsOfDorn:register()