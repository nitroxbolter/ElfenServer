local stormGardMount = Action()

function stormGardMount.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Expeditions.StormgardeMount) < 1 then
		player:setStorageValue(Expeditions.StormgardeMount, 1)
		player:addMount(140)
		item:remove()
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You obtained Stormgarde Mount.")
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have Stormgarde Mount.")
	end
end

stormGardMount:id(29473)
stormGardMount:register()
