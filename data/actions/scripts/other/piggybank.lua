function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if math.random(6) == 1 then
		fromPosition:sendMagicEffect(CONST_ME_POFF)
		item:transform(2115)

		player:addItem(ITEM_GOLD_COIN, 1)
		playSoundPlayer(player, "coin.ogg")
	else
		fromPosition:sendMagicEffect(CONST_ME_SOUND_YELLOW)
		player:addItem(ITEM_PLATINUM_COIN, 1)
		playSoundPlayer(player, "coin.ogg")
	end
	return true
end