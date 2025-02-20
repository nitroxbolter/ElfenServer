local palmTree = Action()

function palmTree.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    if player:getStorageValue(Expeditions.PalmTreeBananaCheck) == 1 then
            if player:getStorageValue(Expeditions.PalmTreeBanana) < 20 then
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    SendMagicEffect(toPosition, 351)
                    player:addItem(2676, 1)
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
                if item:getId() == 29278 then
                    item:transform(29279)
                    item:decay()
                    return true
                end
                if item:getId() == 29279 then
                    item:transform(29280)
                    item:decay()
                    return true
                end
            else
                player:sendTextMessage(MESSAGE_INFO_DESCR, "You have collected 20 Bananas, go back to Fairy Npc.")
            end
    else
    return true
end
return true
end

palmTree:id(29278, 29279)
palmTree:register()