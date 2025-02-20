local ITEM_PRICE = 45 

function onSay(player, words, param)
    local item = ItemType(26651) 
    local requiredPoints = ITEM_PRICE
    local playerPoints = getPoints(player)
    if playerPoints >= requiredPoints then
        removePoints(player, requiredPoints)
        player:addItem(item:getId(), 1)

        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have purchased " .. item:getName() .. " for " .. requiredPoints .. " ancestral points.")
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don\'t have the required " ..requiredPoints .. " ancestral points to buy this.")
    end
    return false
end


function getPoints(player)
    local points = 0
    local resultId = db.storeQuery("SELECT `ancestral_points` FROM `players` WHERE `id` = " .. player:getGuid())
    if resultId ~= false then
        points = result.getDataInt(resultId, "ancestral_points")
        result.free(resultId)
    end
    return points
end

function removePoints(player, amount)
    db.query("UPDATE `players` SET `ancestral_points` = `ancestral_points` - " .. amount .. " WHERE `id` = " .. player:getGuid())
end


