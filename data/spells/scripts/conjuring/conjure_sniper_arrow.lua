function onCastSpell(creature, variant)
	playSound(creature, "conjure_arrow.ogg")
	return creature:conjureItem(0, 7364, 5, CONST_ME_MAGIC_BLUE)
end
