local fireDracadet = Action()


function fireDracadet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.FireDracadet) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Fire Dracadet Familiar.")
        player:setStorageValue(Expeditions.FireDracadet, 1)
        player:setStorageValue(Expeditions.FireDracadetPet, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Fire Dracadet Familiar.")
    end
    return true
end

fireDracadet:id(29375)
fireDracadet:register()