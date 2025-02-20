local astroCorbak = Action()

function astroCorbak.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	
    if player:getStorageValue(Quests.astroMount) == -1 or player:getStorageValue(Quests.astroMount) == 0 then
        player:setStorageValue(Quests.astroMount, 1)
        player:addMount(118)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have obtained Astro Corbak Mount.")
        item:remove()
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have Corbak Mount.")
    end

	return true
end

astroCorbak:id(28032)
astroCorbak:register()