local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
combat:setParameter(COMBAT_PARAM_CREATEITEM, ITEM_FIREFIELD_PVP_FULL)

function onCastSpell(creature, variant, isHotkey)
	playSound(creature, "fire_rune.ogg")
	return combat:execute(creature, variant)
end
