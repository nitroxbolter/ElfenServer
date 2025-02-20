local config = {
    storage = 45394,
    exstorage = 40824,
}

local weekendNightmareCoin = Action()
function weekendNightmareCoin.onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
    local player = Player(cid)
    local lastRewardTime = player:getStorageValue(config.storage) or 0
    local currentTime = os.time()
    
    if lastRewardTime > currentTime - (7 * 24 * 60 * 60) then
        local timeRemaining = (lastRewardTime + (7 * 24 * 60 * 60)) - currentTime
        local daysRemaining = math.ceil(timeRemaining / (24 * 60 * 60))
        playSound(player, "close_chest.ogg")
        return player:sendCancelMessage("The chest is empty. You can claim your next reward in " .. daysRemaining .. " days.")
    end
    
    player:addItem(27990, 2)
    playSound(player, "open_chest.ogg")
    player:setStorageValue(config.storage, currentTime)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have received 2 Stamina Extension.")
    return true
end

weekendNightmareCoin:uid(34803)
weekendNightmareCoin:register()
