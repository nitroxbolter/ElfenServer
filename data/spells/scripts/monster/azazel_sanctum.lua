local condition = Condition(CONDITION_REGENERATION, CONDITIONID_DEFAULT)
condition:setParameter(CONDITION_PARAM_SUBID, 88888)
condition:setParameter(CONDITION_PARAM_TICKS, 5 * 1000)
condition:setParameter(CONDITION_PARAM_HEALTHGAIN, 0.01)
condition:setParameter(CONDITION_PARAM_HEALTHTICKS, 5 * 1000)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 264)
combat:setFormula(COMBAT_FORMULA_DAMAGE, -2000, 0, -3500, 0)

local combat3 = Combat()
combat3:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat3:setParameter(COMBAT_PARAM_EFFECT, 264)
combat3:setFormula(COMBAT_FORMULA_DAMAGE, -2000, 0, -3500, 0)

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat2:setParameter(COMBAT_PARAM_EFFECT, 262)

local combat4 = Combat()
combat4:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat4:setParameter(COMBAT_PARAM_EFFECT, 262)

local arr1 = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
    {0, 0, 0, 1, 0, 2, 0, 1, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
    {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local arr2 = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
    {0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0},
    {0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0},
    {0, 0, 1, 1, 1, 2, 1, 1, 1, 0, 0},
    {0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0},
    {0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0},
    {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
combat:setArea(area1)
combat2:setArea(area1)
combat3:setArea(area2)
combat4:setArea(area2)

function onCastSpell(creature, var)
    if not creature:getCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, 88888) then
        creature:say("This is my isle!", TALKTYPE_ORANGE_2)
        creature:addCondition(condition)
        combat2:execute(creature, var) 
        addEvent(function(cid, var)
            local creature = Creature(cid)
            if not creature then
                return
            end
            combat:execute(creature, var)
            creature:say("Are you pretending to kill me eh ?", TALKTYPE_ORANGE_2)
            creature:say("I am Azazel the Infernal Seraphim!", TALKTYPE_ORANGE_2)
            addEvent(function(cid, var)
                local creature = Creature(cid)
                if not creature then
                    return
                end
                combat4:execute(creature, var)
                creature:say("You will die!", TALKTYPE_ORANGE_2)
                addEvent(function(cid, var)
                    local creature = Creature(cid)
                    if not creature then
                        return
                    end
                    combat3:execute(creature, var)
                    creature:say("Pretending to be a hero, MWAHAHAHA!", TALKTYPE_ORANGE_2)
                end, 2200, creature:getId(), var)
            end, 2200, creature:getId(), var)
        end, 2200, creature:getId(), var)
    else
        return
    end
    return true
end
