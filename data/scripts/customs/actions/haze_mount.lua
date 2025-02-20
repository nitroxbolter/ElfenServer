local hazMount = Action()

function hazMount.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local hazeStorage = 34814

	if player:getStorageValue(hazeStorage) == -1 or player:getStorageValue(hazeStorage) == 0 then
		player:setStorageValue(hazeStorage, 1)
		player:addMount(110)
		item:remove()
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have Haze Mount.")
	end
end

hazMount:id(27296)
hazMount:register()
