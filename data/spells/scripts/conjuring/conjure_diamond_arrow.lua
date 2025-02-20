
function onCastSpell(creature, variant)
	playSound(creature, "conjure_arrow.ogg")
	return creature:conjureItem(0, 27641, 25, CONST_ME_MAGIC_BLUE)
end
