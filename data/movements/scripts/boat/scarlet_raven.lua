function onEquip(player, item, slot, isCheck)
    if isCheck then
        return true
    end
    player:setStorageValue(Ships.ScarletRaven, 1)
    player:setStorageValue(109017, 1)
    if player:getStorageValue(110010) == 0 or player:getStorageValue(110010) == -1 then
        player:setStorageValue(110010, 1)
    end
    return true
end

function onDeEquip(player, item, slot)
    player:setStorageValue(Ships.ScarletRaven, 0)
    player:setStorageValue(109017, 0)
    return true
end