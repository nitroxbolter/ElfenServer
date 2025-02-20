function onEquip(player, item, slot, isCheck)
    if isCheck then
        return true
    end
    player:setStorageValue(Ships.TheCounterspell, 1)
    player:setStorageValue(109017, 1)
    if player:getStorageValue(110012) == 0 or player:getStorageValue(110012) == -1 then
        player:setStorageValue(110012, 1)
    end
    return true
end

function onDeEquip(player, item, slot)
    player:setStorageValue(Ships.TheCounterspell, 0)
    player:setStorageValue(109017, 0)
    return true
end