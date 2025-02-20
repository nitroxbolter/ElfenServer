function onEquip(player, item, slot, isCheck)
    if isCheck then
        return true
    end
    player:setStorageValue(Ships.MenethilMarch, 1)
    player:setStorageValue(109017, 1)
    if player:getStorageValue(110015) == 0 or player:getStorageValue(110015) == -1 then
        player:setStorageValue(110015, 1)
    end
    return true
end

function onDeEquip(player, item, slot)
    player:setStorageValue(Ships.MenethilMarch, 0)
    player:setStorageValue(109017, 0)
    return true
end