local aura = Action()

function aura.onUse(player, item)
    if player:getStorageValue(76011) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have this aura.")
    else
        player:addAura(5)
        player:setStorageValue(76011, 1)
        item:remove(1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "A new aura cosmetic has been added to your clothes.")
    end
end

aura:id(26649)
aura:register()