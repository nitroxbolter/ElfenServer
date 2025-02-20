function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 72648) < 1 then
		local bp = doPlayerAddItem(cid, 5949, 1)
		doAddContainerItem(bp, 18511, 1)
		doAddContainerItem(bp, 2745, 1)
		doAddContainerItem(bp, 9948, 1)
		doAddContainerItem(bp, 2144, 1)
		doAddContainerItem(bp, 5882, 1)
		doAddContainerItem(bp, 5791, 1)
		doAddContainerItem(bp, 2114, 1)
		doAddContainerItem(bp, 6570, 1)
		PlayerSetStorageValue(cid, 72648, 1)
		PlayerSendTextMessage(cid, 19, "You have found a beach backpack.")
		playSound(player, "open_chest.ogg")
	else
		PlayerSendTextMessage(cid, 19, "You already got your reward.")
	end
end