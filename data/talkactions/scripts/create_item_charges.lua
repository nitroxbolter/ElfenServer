local invalidIds = {
    1, 2, 3, 4, 5, 6, 7, 10, 11, 13, 14, 15, 19, 21, 26, 27, 28, 35, 43
}

function onSay(player, words, param)
    if not player:getGroup():getAccess() then
        return true
    end

    if player:getAccountType() < ACCOUNT_TYPE_GOD then
        return false
    end

    local split = param:splitTrimmed(",")

    local itemType = ItemType(split[1])
    if itemType:getId() == 0 then
        itemType = ItemType(tonumber(split[1]))
        if not tonumber(split[1]) or itemType:getId() == 0 then
            player:sendCancelMessage("There is no item with that id or name.")
            return false
        end
    end

    if table.contains(invalidIds, itemType:getId()) then
        return false
    end

    local charges = tonumber(split[2])
    if charges then
        if itemType:hasShowCharges() then
            charges = math.max(0, charges)
        else
            player:sendCancelMessage("Item must be: showcharges = 1 in items.xml")
            charges = 0
        end
    else
        charges = 0
    end

    local result = player:addItem(itemType:getId(), 1)
    if result then
        if charges > 0 then
        result:setAttribute('charges', charges)
        end
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    end
    return false
end