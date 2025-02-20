local aura = Action()

function aura.onUse(player, item)
    if player:getStorageValue(76014) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have this aura.")
    else
        player:addAura(4)
        player:setStorageValue(76014, 1)
        item:remove(1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "A new aura cosmetic has been added to your clothes.")
    end
end

aura:id(26653)
aura:register()