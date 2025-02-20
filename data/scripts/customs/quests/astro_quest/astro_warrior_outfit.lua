local astroWarrior = Action()

function astroWarrior.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	
    if player:getStorageValue(Quests.astroWarriorOutfit) == -1 or player:getStorageValue(Quests.astroWarriorOutfit) == 0 then
        player:setStorageValue(Quests.astroWarriorOutfit, 1)
        player:addOutfit(1208)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have obtained Astro Warrior Outfit.")
        item:remove()
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have Astro Warrior Outfit.")
    end

	return true
end

astroWarrior:id(28031)
astroWarrior:register()