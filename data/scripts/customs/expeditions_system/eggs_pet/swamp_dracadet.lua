local swampDracadet = Action()


function swampDracadet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.SwampDracadet) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Swamp Dracadet Familiar.")
        player:setStorageValue(Expeditions.SwampDracadet, 1)
        player:setStorageValue(Expeditions.SwampDracadetPet, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Swamp Dracadet Familiar.")
    end
    return true
end

swampDracadet:id(29369)
swampDracadet:register()