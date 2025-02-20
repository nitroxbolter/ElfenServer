local stoneDracadet = Action()


function stoneDracadet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.StoneDracadet) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Stone Dracadet Familiar.")
        player:setStorageValue(Expeditions.StoneDracadet, 1)
        player:setStorageValue(Expeditions.StoneDracadetPet, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Stone Dracadet Familiar.")
    end
    return true
end

stoneDracadet:id(29372)
stoneDracadet:register()