local combat = Combat()
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
combat:setParameter(COMBAT_PARAM_CREATEITEM, ITEM_MAGICWALL)

function onCastSpell(creature, variant, isHotkey)
	playSound(creature, "magic_wall.ogg")
	return combat:execute(creature, variant)
end
