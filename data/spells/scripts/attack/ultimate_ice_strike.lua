local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLICE)

function onGetFormulaValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_RIGHT)
    local itemMultipliers = {
        [28689] = 1.33,
    }
    local min = (level / 5) + (magicLevel * 4.5) + 35
	local max = (level / 5) + (magicLevel * 7.3) + 55

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	playSound(creature, "frost_4.ogg")
	return combat:execute(creature, variant)
end
