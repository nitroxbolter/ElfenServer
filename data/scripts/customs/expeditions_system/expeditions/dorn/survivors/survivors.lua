local survivors = Action()

function survivors.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local survivors = player:getStorageValue(Expeditions.SurvivorsOfDorn)
    if player:getStorageValue(Expeditions.SurvivorsOfDornCheck) == 1 then
        if survivors < 15 then
            if item.itemid == 29133 then
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    item:transform(29135)
                    item:decay()
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
            end
            if item.itemid == 29135 then
                item:transform(29139)
                player:say("Survivor Liberated.", TALKTYPE_MONSTER_SAY)
                item:decay()
                player:setStorageValue(Expeditions.SurvivorsOfDorn, survivors + 1) 
            end
            if item.itemid == 29134 then
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    item:transform(29136)
                    item:decay()
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
            end
            if item.itemid == 29136 then
                item:transform(29138)
                player:say("Survivor Liberated.", TALKTYPE_MONSTER_SAY)
                player:setStorageValue(Expeditions.SurvivorsOfDorn, survivors + 1)
                item:decay()
            end
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already freed 15 survivors.")
        end
    else
        return true
    end
end

survivors:aid(42390)
survivors:register()