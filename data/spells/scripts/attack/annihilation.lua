local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_USECHARGES, true)

function onGetFormulaValues(player, skill, attack, factor)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28128] = 1.12,
		[28129] = 1.12,
		[28130] = 1.12,
		[28134] = 1.12,
		[28135] = 1.12,
		[28136] = 1.12,
    }
    local min = (player:getLevel() / 5) + (skill * attack * 0.06) + 13
	local max = (player:getLevel() / 5) + (skill * attack * 0.14) + 34
    local weapon = player:getSlotItem(CONST_SLOT_LEFT)
    local weaponType = weapon:getType():getWeaponType()
    if weaponType == WEAPON_AXE or weaponType == WEAPON_SWORD or weaponType == WEAPON_CLUB then
    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
else
    return
end
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
    playSound(creature, "weapon_attack.ogg")
	return combat:execute(creature, variant)
end
