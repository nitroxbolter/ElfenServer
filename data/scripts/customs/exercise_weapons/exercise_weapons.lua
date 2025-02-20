local exerciseWeapons = Action()

local itemTable = {
    [27761] = 27732,
    [27762] = 27733,
    [27763] = 27734,
    [27764] = 27735,
    [27765] = 27736,
    [27766] = 27737,
    [27767] = 27758
}

local charges = 500

function exerciseWeapons.onUse(player, item)
    local itemId = item:getId()
    local transformedItemId = itemTable[itemId]
    
    if transformedItemId ~= nil then
        local newItem = player:addItem(transformedItemId, 1)
        if newItem then
            newItem:setAttribute(ITEM_ATTRIBUTE_CHARGES, charges)
            item:remove()
            return true
        else
            player:sendCancelMessage("You don't have enough capacity to carry the transformed item.")
            return false
        end
    else
        player:sendCancelMessage("This item cannot be transformed.")
        return false
    end
end

exerciseWeapons:id(27761,27762,27763,27764,27765,27766,27767)
exerciseWeapons:register()