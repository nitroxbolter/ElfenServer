local config = {
	[ITEM_GOLD_COIN] = {changeTo = ITEM_PLATINUM_COIN},
	[ITEM_PLATINUM_COIN] = {changeBack = ITEM_GOLD_COIN, changeTo = ITEM_CRYSTAL_COIN},
	[ITEM_CRYSTAL_COIN] = {changeBack = ITEM_PLATINUM_COIN, changeTo = ITEM_AMBER_COIN},
	[ITEM_AMBER_COIN] = {changeBack = ITEM_CRYSTAL_COIN, changeTo = ITEM_DEMONIAC_COIN},
	[ITEM_DEMONIAC_COIN] = {changeBack = ITEM_AMBER_COIN}
}

function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	local coin = config[item.itemid]
	if not coin then
		return false
	end

	if coin.changeTo and item.type == 100 then
		item:remove()
		player:addItem(coin.changeTo, 1)
		playSoundPlayer(player, "coin.ogg")
	elseif coin.changeBack then
		item:transform(item.itemid, item.type - 1)
		player:addItem(coin.changeBack, 100)
		playSoundPlayer(player, "coin.ogg")
	else
		return false
	end
	return true
end
