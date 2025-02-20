local ancestralCoin = Action()

function ancestralCoin.onUse(player, item)
    local points = item:getCount()
    local accountId = player:getGuid() 
    db.query(string.format("UPDATE `players` SET `ancestral_points` = `ancestral_points` + %d WHERE `id` = %s", points, accountId))

    player:sendTextMessage(MESSAGE_INFO_DESCR, "You received " .. points .. " Ancestral Points.")
    item:remove()
    playSoundPlayer(player, "coin.ogg")
    return true
end

ancestralCoin:id(26778)
ancestralCoin:register()
