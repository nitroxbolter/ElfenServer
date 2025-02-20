local combat = Combat()
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
combat:setParameter(COMBAT_PARAM_CREATEITEM, ITEM_WILDGROWTH)

function onCastSpell(creature, variant, isHotkey)
	playSound(creature, "grow_rune.ogg")
	return combat:execute(creature, variant)
end
