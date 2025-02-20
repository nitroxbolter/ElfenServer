local pastryDecoration = Action()

function pastryDecoration.onUse(player, item)
    local currentStorage = player:getStorageValue(78194)
    
    if currentStorage == 7 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already found all the pastry decorations.")
        return true
    end
    
    if currentStorage < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to start the mission before finding the pastry decorations.")
        return true
    end

    if currentStorage >= 1 and currentStorage < 7 then
        player:setStorageValue(78194, currentStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found another pastry decoration. Keep looking!")
        
        if currentStorage + 1 == 7 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found all the pastry decorations! Return to Candis.")
        end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already found this pastry decoration.")
    end

    return true
end

pastryDecoration:aid(38654, 38655, 38656, 38657, 38658, 38659)
pastryDecoration:register()