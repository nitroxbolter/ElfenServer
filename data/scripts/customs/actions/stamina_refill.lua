local smallstaminarefill = Action()
function smallstaminarefill.onUse(player, item)
    local stamina = player:getStamina()
    if stamina >= 2520 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have a full stamina.")
        return true
    end
    player:setStamina(math.min(2520, stamina + 120))
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have regenerate 2 hours of stamina.")
    item:remove(1)
    playSoundPlayer(player, "stamina_potion.ogg")
    return true
end

smallstaminarefill:id(27990)
smallstaminarefill:register()
 