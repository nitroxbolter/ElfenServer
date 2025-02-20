local fireDracadet = Action()


function fireDracadet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.FireDracadet2) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Fire Dracadet [2] Familiar.")
        player:setStorageValue(Expeditions.FireDracadet2, 1)
        player:setStorageValue(Expeditions.FireDracadetPet2, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Fire Dracadet [2] Familiar.")
    end
    return true
end

fireDracadet:id(29376)
fireDracadet:register()