local condition = Condition(CONDITION_REGENERATION, CONDITIONID_DEFAULT)
condition:setParameter(CONDITION_PARAM_SUBID, 88888)
condition:setParameter(CONDITION_PARAM_TICKS, 5 * 1000)
condition:setParameter(CONDITION_PARAM_HEALTHGAIN, 0.01)
condition:setParameter(CONDITION_PARAM_HEALTHTICKS, 5 * 1000)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 246)
combat:setFormula(COMBAT_FORMULA_DAMAGE, -1000, 0, -5000, 0)

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat2:setParameter(COMBAT_PARAM_EFFECT, 262)

local arr1 = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 1, 0, 1, 0, 2, 0, 1, 0, 1, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
combat:setArea(area1)
combat2:setArea(area1)

function onCastSpell(creature, var)
    if not creature:getCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, 88888) then
        creature:say("The Storm Is Coming!", TALKTYPE_ORANGE_2)
        creature:addCondition(condition)
        combat2:execute(creature, var) 
        addEvent(function(cid, var)
            local creature = Creature(cid)
            if not creature then
                return
            end
            combat:execute(creature, var)
            creature:say("Thunder!", TALKTYPE_ORANGE_2)
        end, 2200, creature:getId(), var)
    else
        return
    end
    return true
end
