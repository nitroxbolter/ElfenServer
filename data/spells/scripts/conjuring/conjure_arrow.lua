function onCastSpell(creature, variant)
	playSound(creature, "conjure_arrow.ogg")
	return creature:conjureItem(0, 2544, 10, CONST_ME_MAGIC_BLUE)
end
