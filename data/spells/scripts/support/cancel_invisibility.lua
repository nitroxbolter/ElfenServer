local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_INVISIBLE)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onCastSpell(creature, variant)
	playSound(creature, "cancel_invisible.ogg")
	return combat:execute(creature, variant)
end
