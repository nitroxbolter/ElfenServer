local frostDracadet = Action()


function frostDracadet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return true
    end
    if player:getStorageValue(Expeditions.FrostDracadet2) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received a new Frost Dracadet [2] Familiar.")
        player:setStorageValue(Expeditions.FrostDracadet2, 1)
        player:setStorageValue(Expeditions.FrostDracadetPet2, 1)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a Frost Dracadet [2] Familiar.")
    end
    return true
end

frostDracadet:id(29364)
frostDracadet:register()