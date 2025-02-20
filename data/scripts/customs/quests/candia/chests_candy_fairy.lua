local chestsCandy = Action()

function chestsCandy.onUse(player, item)

    local storage = 314574
    local time = os.time()
    local count = 24 * 60 * 60
    local remainingTime = player:getStorageValue(storage) - time
    local item = {
        [1] = {itemid = 28686, count = 2, name = "gelling"},
        [2] = {itemid = 28687, count = 2, name = "sugar candy"},
        [3] = {itemid = 28695, count = 4, name = "gummy rotworm"},
        [4] = {itemid = 28696, count = 3, name = "milk chocolate coin"},
        [5] = {itemid = 28698, count = 5, name = "wafer paper flower"},
        [6] = {itemid = 28699, count = 4, name = "brigadeiro"},
        [7] = {itemid = 28700, count = 5, name = "beijinho"},
        [8] = {itemid = 28701, count = 3, name = "churro heart"},
        [9] = {itemid = 28702, count = 3, name = "pastry dragon"},
        [10] = {itemid = 28697, count = 5, name = "dark chocolate coin"}
    }

    if player:getStorageValue(storage) < time then
        player:setStorageValue(storage, time + count)
        player:addItem(item[math.random(1, 8)].itemid, item[math.random(1, 10)].count)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You found " .. item[math.random(1, 10)].name .. ".")
    else
        local hours = math.floor(remainingTime / 3600)
        local minutes = math.floor((remainingTime % 3600) / 60)
        local seconds = remainingTime % 60

        player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("You already checked the chests, time remaining: %02d hours, %02d minutes, and %02d seconds. You may now leave the room.", hours, minutes, seconds))
    end
    return true
end

chestsCandy:aid(42640)
chestsCandy:register()


local chestsCandy = Action()

function chestsCandy.onUse(player, item)

    local storage = 314575
    local time = os.time()
    local count = 24 * 60 * 60
    local remainingTime = player:getStorageValue(storage) - time
    local item = {
        [1] = {itemid = 28686, count = 2, name = "gelling"},
        [2] = {itemid = 28687, count = 2, name = "sugar candy"},
        [3] = {itemid = 28695, count = 4, name = "gummy rotworm"},
        [4] = {itemid = 28696, count = 3, name = "milk chocolate coin"},
        [5] = {itemid = 28698, count = 5, name = "wafer paper flower"},
        [6] = {itemid = 28699, count = 4, name = "brigadeiro"},
        [7] = {itemid = 28700, count = 5, name = "beijinho"},
        [8] = {itemid = 28701, count = 3, name = "churro heart"},
        [9] = {itemid = 28702, count = 3, name = "pastry dragon"},
        [10] = {itemid = 28697, count = 5, name = "dark chocolate coin"}
    }

    if player:getStorageValue(storage) < time then
        player:setStorageValue(storage, time + count)
        player:addItem(item[math.random(1, 8)].itemid, item[math.random(1, 10)].count)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You found " .. item[math.random(1, 10)].name .. ".")
    else
        local hours = math.floor(remainingTime / 3600)
        local minutes = math.floor((remainingTime % 3600) / 60)
        local seconds = remainingTime % 60

        player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("You already checked the chests, time remaining: %02d hours, %02d minutes, and %02d seconds. You may now leave the room.", hours, minutes, seconds))
    end
    return true
end

chestsCandy:aid(42641)
chestsCandy:register()