local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGetFormulaValues(player, level, magicLevel)
    local min = (level / 5) + (magicLevel * 4) + 25
    local max = (level / 5) + (magicLevel * 8) + 50

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        -- Removido o sinal negativo
        local newMin = min * multiplier
        local newMax = max * multiplier
        return newMin, newMax
    else
        -- Removido o sinal negativo
        return min, max
    end
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	playSound(creature, "heal_2.ogg")
	return combat:execute(creature, variant)
end
