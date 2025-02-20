local combat = Combat()
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, 2 * 60 * 1000)
condition:setParameter(CONDITION_PARAM_SKILL_SHIELD, 5)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

function onCastSpell(creature, variant)
	playSound(creature, "block.ogg")
	return creature:addPartyCondition(combat, variant, condition, 90)
end
