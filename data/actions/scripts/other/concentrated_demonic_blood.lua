function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	item:getPosition():sendMagicEffect(CONST_ME_DRAWBLOOD)
	item:transform(math.random(7588, 7589))
	playSoundPlayer(player, "other_potion.ogg")
	return true
end
