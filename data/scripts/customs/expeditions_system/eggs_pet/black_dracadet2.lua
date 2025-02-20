local blackDracadetEggs = Action()


function blackDracadetEggs.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.BlackDracadet2) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Black Dracadet [2] Familiar.")
        player:setStorageValue(Expeditions.BlackDracadet2, 1)
        player:setStorageValue(Expeditions.BlackDracadetPet2, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Black Dracadet [2] Familiar.")
    end
    return true
end

blackDracadetEggs:id(29335)
blackDracadetEggs:register()