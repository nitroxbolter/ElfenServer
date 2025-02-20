local aura = Action()

function aura.onUse(player, item)
    if player:getStorageValue(76013) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have this aura.")
    else
        player:addAura(1)
        player:setStorageValue(76013, 1)
        item:remove(1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "A new aura cosmetic has been added to your clothes.")
    end
end

aura:id(26650)
aura:register()