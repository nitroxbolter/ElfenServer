local itemsRandom = {
    28327,
    28328,
    28329,
    28330,
    28331,
    28332,
    28333,
    28334,
    28335,
    28336,
    28337,
    28338,
    28339,
    28340,
    28341,
    28342
}

local exaltedCore = Action()

function exaltedCore.onUse(player, item, fromPos, target, toPos, isHotkey)
    local targetItemId = target:getId()
    local isValidTarget = false
    
    for _, itemId in ipairs(itemsRandom) do
        if itemId == targetItemId then
            isValidTarget = true
            break
        end
    end
    
    if isValidTarget then
        target:remove(1)
        item:remove(1)
        
        local randomIndex = math.random(1, #itemsRandom)
        local newItemId = itemsRandom[randomIndex]
        
        player:addItem(newItemId, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Soul Core transformed!")
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "This item cannot be transformed into another Soul Core.")
    end
    
    return true
end

exaltedCore:id(28345)
exaltedCore:register()
