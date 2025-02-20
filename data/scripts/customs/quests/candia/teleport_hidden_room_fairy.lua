local teleportFairy = Action()


function teleportFairy.onUse(player, item, position, fromPosition)
    if not player then
        return true
    end


    player:teleportTo(Position(31786, 32527, 8), true)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You founded a secret room.")
    return true
end

teleportFairy:aid(38666)
teleportFairy:register()