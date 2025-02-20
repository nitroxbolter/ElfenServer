function onLogin(player)
    local boostedMonsterIndex = getGlobalStorageValue(PlayerStorageKeys.boostedBoss) 
    local boostedMonster = boostedBossesList[boostedMonsterIndex] 
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Today's boosted boss is : " .. boostedMonster .. "!")
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Today's boosted boss is : " .. boostedMonster .. "!")
        return true
    end