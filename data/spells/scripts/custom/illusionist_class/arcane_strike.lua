local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 288)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 86)

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.4) + 8
	local max = (level / 5) + (magicLevel * 2.2) + 14
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	playSound(creature, "arcane.ogg")
	return combat:execute(creature, variant)
end
