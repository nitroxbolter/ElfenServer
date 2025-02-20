local royalEggs = Action()

function royalEggs.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    if player:getStorageValue(Expeditions.RoyalVultureEggsCheck) == 1 then
            if player:getStorageValue(Expeditions.RoyalVultureEggs) < 20 then
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    SendMagicEffect(toPosition, 351)
                    player:addItem(29283, 1)
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
                if item:getId() == 29282 then
                    item:transform(29281)
                    item:decay()
                    return true
                end
            else
                player:sendTextMessage(MESSAGE_INFO_DESCR, "You have collected 20 Royal Eggs, go back to Fairy Npc.")
            end
    else
    return true
end
return true
end

royalEggs:aid(42397)
royalEggs:register()