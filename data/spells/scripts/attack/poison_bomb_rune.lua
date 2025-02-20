local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
combat:setParameter(COMBAT_PARAM_CREATEITEM, ITEM_POISONFIELD_PVP)
combat:setArea(createCombatArea(AREA_SQUARE1X1))

function onCastSpell(creature, variant, isHotkey)
	playSound(creature, "poison_rune.ogg")
	return combat:execute(creature, variant)
end
