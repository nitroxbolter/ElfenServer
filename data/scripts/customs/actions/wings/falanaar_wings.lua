local wings = Action()

function wings.onUse(player, item)
    if player:getStorageValue(76023) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have this wings.")
    else
        player:addWings(3)
        player:setStorageValue(76023, 1)
        item:remove(1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "A new wing cosmetic has been added to your clothes.")
    end
end

wings:id(26646)
wings:register()