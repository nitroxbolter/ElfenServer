local lostItems = Action()

function lostItems.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local lostItems = player:getStorageValue(Expeditions.LostSnowObjects)
    if player:getStorageValue(Expeditions.LostSnowObjectsCheck) == 1 then
        local lostItemOnUse = player:getStorageValue(Expeditions.LostSnowObjectsTimeOnUse)
        if lostItemOnUse > os.time() then
        player:say("Find out another item!", TALKTYPE_MONSTER_SAY)
        return true
        end
        player:say("You find a lost item on the snow.", TALKTYPE_MONSTER_SAY)
        player:setStorageValue(Expeditions.LostSnowObjectsTimeOnUse, os.time() + 45)
        player:setStorageValue(Expeditions.LostSnowObjects, lostItems + 1)
    else
        return true
    end
end

lostItems:aid(42386)
lostItems:register()