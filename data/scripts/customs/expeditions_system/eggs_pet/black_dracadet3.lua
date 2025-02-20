local blackDracadetEggs = Action()


function blackDracadetEggs.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.BlackDracadet3) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Black Dracadet [3] Familiar.")
        player:setStorageValue(Expeditions.BlackDracadet3, 1)
        player:setStorageValue(Expeditions.BlackDracadetPet3, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Black Dracadet [3] Familiar.")
    end
    return true
end

blackDracadetEggs:id(29336)
blackDracadetEggs:register()