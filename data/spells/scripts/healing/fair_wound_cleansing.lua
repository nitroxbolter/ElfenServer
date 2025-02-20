local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, 185)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function onGetFormulaValues(player, level, magicLevel)
	local min = (level * 0.2 + magicLevel * 4 + 25) * 2
	local max = (level * 0.2 + magicLevel * 7.95 + 51) * 2
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


function onCastSpell(creature, variant)
	playSound(creature, "heal_3.ogg")
	return combat:execute(creature, variant)
end

