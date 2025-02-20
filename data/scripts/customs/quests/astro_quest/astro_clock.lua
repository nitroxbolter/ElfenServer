local astroClock = Action()

function astroClock.onUse(player, item)

    if player:getStorageValue(Quests.astroClock) == -1 or player:getStorageValue(Quests.astroClock) == 0 then 
        player:setStorageValue(Quests.astroClock, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have found the clock.")
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already checked the clock, you may now pass the door.")
    end
    return true
end

astroClock:aid(13689)
astroClock:register()