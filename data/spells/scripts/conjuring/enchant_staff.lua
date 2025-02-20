function onCastSpell(creature, variant)
	playSound(creature, "conjure_rune.ogg")
	return creature:conjureItem(2401, 2433, 1, CONST_ME_MAGIC_GREEN)
end
