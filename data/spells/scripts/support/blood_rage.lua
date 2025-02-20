local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, 10000)
condition:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 135)
condition:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local combatOne = Combat()
combatOne:setParameter(COMBAT_PARAM_EFFECT, 223)
combatOne:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition1 = Condition(CONDITION_ATTRIBUTES)
condition1:setParameter(CONDITION_PARAM_TICKS, 12000)
condition1:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 137)
condition1:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
condition1:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local combatTwo = Combat()
combatTwo:setParameter(COMBAT_PARAM_EFFECT, 223)
combatTwo:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition2 = Condition(CONDITION_ATTRIBUTES)
condition2:setParameter(CONDITION_PARAM_TICKS, 14000)
condition2:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 139)
condition2:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
condition2:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local combatThree = Combat()
combatThree:setParameter(COMBAT_PARAM_EFFECT, 223)
combatThree:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition3 = Condition(CONDITION_ATTRIBUTES)
condition3:setParameter(CONDITION_PARAM_TICKS, 16000)
condition3:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 141)
condition3:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
condition3:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local combatFour = Combat()
combatFour:setParameter(COMBAT_PARAM_EFFECT, 223)
combatFour:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition4 = Condition(CONDITION_ATTRIBUTES)
condition4:setParameter(CONDITION_PARAM_TICKS, 20000)
condition4:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 142)
condition4:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
condition4:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

combat:addCondition(condition)
combatOne:addCondition(condition1)
combatTwo:addCondition(condition2)
combatThree:addCondition(condition3)
combatFour:addCondition(condition4)

function onCastSpell(creature, variant)
	local player = Player(creature)
    playSound(creature, "utito.ogg")
    if player and player:getStorageValue(37035) == 1 then
        combatFour:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37034) == 1 then
        combatThree:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37033) == 1 then
        combatTwo:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37032) == 1 then
        combatOne:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
