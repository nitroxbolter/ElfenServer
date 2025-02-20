local honeyBeeMount = Action()

function honeyBeeMount.onUse(player, item)
    local gellingsID = 28686
    local sugarCandyID = 28687
    local requiredAmount = 100

    if player:getItemCount(gellingsID) >= requiredAmount and player:getItemCount(sugarCandyID) >= requiredAmount then
        if not player:hasMount(124) then
            player:removeItem(gellingsID, requiredAmount)
            player:removeItem(sugarCandyID, requiredAmount)
            player:addMount(124)
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have obtained the Honey Bee Mount.")
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have the Honey Bee Mount.")
        end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 100 Gelling's and 100 Sugar Candy to obtain the Honey Bee Mount.")
    end
end

honeyBeeMount:id(28686, 28687)
honeyBeeMount:register()
