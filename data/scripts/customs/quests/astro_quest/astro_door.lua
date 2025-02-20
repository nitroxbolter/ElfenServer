local astroClock = Action()

function astroClock.onUse(player, item, fromPosition, target, toPosition, isHotkey)

    if player:getStorageValue(Quests.astroClock) == -1 or player:getStorageValue(Quests.astroClock) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need find the Astro Clock.")
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Find a way to go depth in the room.")
        player:setStorageValue(Quests.astroClock, 0)
        player:teleportTo(Position(31568, 33003, 7), true)
    end
    return true
end

astroClock:aid(13690)
astroClock:register()