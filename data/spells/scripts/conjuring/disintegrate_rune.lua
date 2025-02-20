function onCastSpell(creature, variant)
	playSound(creature, "conjure_rune.ogg")
	return creature:conjureItem(2260, 2310, 3)
end
