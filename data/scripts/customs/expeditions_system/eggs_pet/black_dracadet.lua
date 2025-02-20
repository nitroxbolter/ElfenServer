local blackDracadetEggs = Action()


function blackDracadetEggs.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.BlackDracadet) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Black Dracadet Familiar.")
        player:setStorageValue(Expeditions.BlackDracadet, 1)
        player:setStorageValue(Expeditions.BlackDracadetPet, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Black Dracadet Familiar.")
    end
    return true
end

blackDracadetEggs:id(29334)
blackDracadetEggs:register()