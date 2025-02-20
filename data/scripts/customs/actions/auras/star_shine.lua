local aura = Action()

function aura.onUse(player, item)
    if player:getStorageValue(76015) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have this aura.")
    else
        player:addAura(3)
        player:setStorageValue(76015, 1)
        item:remove(1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "A new aura cosmetic has been added to your clothes.")
    end
end

aura:id(26651)
aura:register()