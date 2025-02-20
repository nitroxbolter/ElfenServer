local astroWarrior = Action()

function astroWarrior.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	
    if player:getStorageValue(Quests.astroMageOutfit) == -1 or player:getStorageValue(Quests.astroMageOutfit) == 0 then
        player:setStorageValue(Quests.astroMageOutfit, 1)
        player:addOutfit(1207)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have obtained Astro Mage Outfit.")
        item:remove()
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have Astro Mage Outfit.")
    end

	return true
end

astroWarrior:id(28030)
astroWarrior:register()