local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

-- Aumento de skill
local skill = Condition(CONDITION_ATTRIBUTES)
skill:setParameter(CONDITION_PARAM_TICKS, 15000)
skill:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, 125)
skill:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:addCondition(skill)

-- Cooldown de ataque
local cooldownAttackGroup = Condition(CONDITION_SPELLGROUPCOOLDOWN)
cooldownAttackGroup:setParameter(CONDITION_PARAM_SUBID, 1)
cooldownAttackGroup:setParameter(CONDITION_PARAM_TICKS, 4000)
combat:addCondition(cooldownAttackGroup)

function onCastSpell(creature, variant)
    playSound(creature, "utito.ogg")
    return combat:execute(creature, variant)
end
