local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local skill = Condition(CONDITION_ATTRIBUTES)
skill:setParameter(CONDITION_PARAM_TICKS, 10000)
skill:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, 150)
skill:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
skill:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:addCondition(skill)

local speed = Condition(CONDITION_PARALYZE)
speed:setParameter(CONDITION_PARAM_TICKS, 10000)
speed:setFormula(-0.7, 56, -0.7, 56)
combat:addCondition(speed)


local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_EFFECT, 224)
combat1:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local skill1 = Condition(CONDITION_ATTRIBUTES)
skill1:setParameter(CONDITION_PARAM_TICKS, 12000)
skill1:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, 152)
skill1:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
skill1:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat1:addCondition(skill1)

local speed1 = Condition(CONDITION_PARALYZE)
speed1:setParameter(CONDITION_PARAM_TICKS, 12000)
speed:setFormula(-0.7, 56, -0.7, 56)
combat1:addCondition(speed1)

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_EFFECT, 224)
combat2:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local skill2 = Condition(CONDITION_ATTRIBUTES)
skill2:setParameter(CONDITION_PARAM_TICKS, 14000)
skill2:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, 154)
skill2:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
skill2:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat2:addCondition(skill2)

local speed2 = Condition(CONDITION_PARALYZE)
speed2:setParameter(CONDITION_PARAM_TICKS, 14000)
speed:setFormula(-0.7, 56, -0.7, 56)
combat2:addCondition(speed2)

local combat3 = Combat()
combat3:setParameter(COMBAT_PARAM_EFFECT, 224)
combat3:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local skill3 = Condition(CONDITION_ATTRIBUTES)
skill3:setParameter(CONDITION_PARAM_TICKS, 16000)
skill3:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, 156)
skill3:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
skill3:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat3:addCondition(skill3)

local speed3 = Condition(CONDITION_PARALYZE)
speed3:setParameter(CONDITION_PARAM_TICKS, 16000)
speed:setFormula(-0.7, 56, -0.7, 56)
combat3:addCondition(speed3)


local combat4 = Combat()
combat4:setParameter(COMBAT_PARAM_EFFECT, 224)
combat4:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local skill4 = Condition(CONDITION_ATTRIBUTES)
skill4:setParameter(CONDITION_PARAM_TICKS, 20000)
skill4:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, 158)
skill4:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
skill4:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat4:addCondition(skill4)

local speed4 = Condition(CONDITION_PARALYZE)
speed4:setParameter(CONDITION_PARAM_TICKS, 20000)
speed:setFormula(-0.7, 56, -0.7, 56)
combat4:addCondition(speed4)

function onCastSpell(creature, variant)
	local player = Player(creature)
    playSound(creature, "utito.ogg")
    if player and player:getStorageValue(37039) == 1 then
        combat4:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37038) == 1 then
        combat3:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37037) == 1 then
        combat2:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37036) == 1 then
        combat1:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
