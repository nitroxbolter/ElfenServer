local lastingExercise = Action()

local itemTable = {
    [27775] = 27744,
    [27776] = 27745,
    [27777] = 27746,
    [27778] = 27747,
    [27779] = 27748,
    [27780] = 27749,
    [27781] = 27760
}

local charges = 14400

function lastingExercise.onUse(player, item)
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

lastingExercise:id(27775,27776,27777,27778,27779,27780,27781)
lastingExercise:register()