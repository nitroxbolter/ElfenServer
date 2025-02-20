local durableExercise = Action()

local itemTable = {
    [27768] = 27738,
    [27769] = 27739,
    [27770] = 27740,
    [27771] = 27741,
    [27772] = 27742,
    [27773] = 27743,
    [27774] = 27759
}

local charges = 1800

function durableExercise.onUse(player, item)
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

durableExercise:id(27768,27769,27770,27771,27772,27773,27774)
durableExercise:register()