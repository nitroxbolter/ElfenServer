function onGetFormulaValues(player, level, maglevel)
    local min = (level / 5) + (maglevel * 5.5)
    local max = (level / 5) + (maglevel * 9)
    return -min, -max
end

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat:setArea(createCombatArea(AREA_BEAM8))
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, var)
    if not creature or not creature:isPlayer() then
        return false
    end

    local cooldown = 10
    local executed = combat:execute(creature, var)

    if executed then
        local condition = Condition(CONDITION_SPELLCOOLDOWN, CONDITIONID_DEFAULT)
        condition:setTicks(cooldown * 1000)
        creature:addCondition(condition)
        playSound(creature, "mort_2.ogg")
        return true
    end

    return false
end
