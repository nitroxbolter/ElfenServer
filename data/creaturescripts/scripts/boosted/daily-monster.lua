function onLogin(player)
    local boostedMonsterIndex = getGlobalStorageValue(PlayerStorageKeys.boostedCreature) 
    local boostedMonster = boostedMonsterList[boostedMonsterIndex] 
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Today's boosted creature is : " .. boostedMonster .. "!")
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Today's boosted creature is : " .. boostedMonster .. "!")
        return true
    end