local swampDracadet = Action()


function swampDracadet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.SwampDracadet2) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Swamp Dracadet [2] Familiar.")
        player:setStorageValue(Expeditions.SwampDracadet2, 1)
        player:setStorageValue(Expeditions.SwampDracadetPet2, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Swamp Dracadet [2] Familiar.")
    end
    return true
end

swampDracadet:id(29370)
swampDracadet:register()