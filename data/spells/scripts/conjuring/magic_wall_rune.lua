function onCastSpell(creature, variant)
	playSound(creature, "conjure_rune.ogg")
	return creature:conjureItem(2260, 2293, 3)
end
