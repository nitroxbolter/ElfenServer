local craftStonePhantasmal = Action()

local mountIDToGive = 112
local itemIDsRequired = {27344, 27345, 27346}
local itemCountsRequired = {4, 1, 1}

function hasRequiredItems(player)
    for i, itemID in ipairs(itemIDsRequired) do
        if player:getItemCount(itemID) < itemCountsRequired[i] then
            return false
        end
    end
    return true
end

function giveMountToPlayer(player)
    if not hasRequiredItems(player) then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You do not have all the required items to obtain the phantasmal jade mount.")
        return false
    end

    if player:hasMount(mountIDToGive) then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already have the phantasmal jade mount.")
        return false
    end

    for i, itemID in ipairs(itemIDsRequired) do
        player:removeItem(itemID, itemCountsRequired[i])
    end

    player:addMount(mountIDToGive)

    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained phantasmal jade mount.")
    return true
end

function craftStonePhantasmal.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player:isPlayer() then
        return false
    end

    if item:getId() == itemIDsRequired[1] then
        giveMountToPlayer(player)
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to use the spectral horseshoe in order to receive the Phantasmal Jade Mount.")
    end
    return true
end

craftStonePhantasmal:id(27344)
craftStonePhantasmal:register()
