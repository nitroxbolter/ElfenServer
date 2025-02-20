function onCastSpell(creature, variant)
	playSound(creature, "conjure_arrow.ogg")
	return creature:conjureItem(2389, 7367, 1, CONST_ME_MAGIC_GREEN)
end
