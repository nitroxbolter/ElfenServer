local frostDracadet = Action()


function frostDracadet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.FrostDracadet3) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Frost Dracadet [3] Familiar.")
        player:setStorageValue(Expeditions.FrostDracadet3, 1)
        player:setStorageValue(Expeditions.FrostDracadetPet3, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Frost Dracadet [3] Familiar.")
    end
    return true
end

frostDracadet:id(29365)
frostDracadet:register()