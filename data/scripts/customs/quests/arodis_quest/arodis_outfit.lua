local arodisOutfit = Action()

function arodisOutfit.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	
    if player:getStorageValue(Quests.arodisOutfit) == -1 or player:getStorageValue(Quests.arodisOutfit) == 0 then
        player:setStorageValue(Quests.arodisOutfit, 1)
        player:addOutfit(1228)
        player:addOutfit(1229)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have obtained Arodis Outfit.")
        item:remove()
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have Arodis Outfit.")
    end

	return true
end

arodisOutfit:id(28053)
arodisOutfit:register()