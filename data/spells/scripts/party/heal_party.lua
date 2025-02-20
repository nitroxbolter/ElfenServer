local combat = Combat()
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

local condition = Condition(CONDITION_REGENERATION)
condition:setParameter(CONDITION_PARAM_TICKS, 2 * 60 * 1000)
condition:setParameter(CONDITION_PARAM_HEALTHGAIN, 100)
condition:setParameter(CONDITION_PARAM_HEALTHTICKS, 2000)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

function onCastSpell(creature, variant)
	playSound(creature, "heal_3.ogg")
	return creature:addPartyCondition(combat, variant, condition, 120)
end
