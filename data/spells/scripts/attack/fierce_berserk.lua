local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_USECHARGES, true)
combat:setArea(createCombatArea(AREA_SQUARE1X1))


function onGetFormulaValues(player, skill, attack, factor)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27458] = 1.10,
        [27460] = 1.10,
        [27462] = 1.10,
        [27464] = 1.10,
        [27466] = 1.10,
        [27468] = 1.10,
        [27459] = 1.20,
        [27461] = 1.20,
        [27463] = 1.20,
        [27465] = 1.20,
        [27467] = 1.20,
        [27469] = 1.20,
    }
    local min = (player:getLevel() / 5) + (skill * attack * 0.06) + 13
	local max = (player:getLevel() / 5) + (skill * attack * 0.11) + 27

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end



combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
    playSound(creature, "berserk.ogg")
	return combat:execute(creature, variant)
end
