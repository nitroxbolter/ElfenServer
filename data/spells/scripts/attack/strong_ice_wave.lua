local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
combat:setArea(createCombatArea(AREA_WAVE3))

function onGetFormulaValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28133] = 1.08,
    }
	local min = (level / 5) + (magicLevel * 4.5) + 20
	local max = (level / 5) + (magicLevel * 7.6) + 48
	if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat1:setParameter(COMBAT_PARAM_EFFECT, 226)
combat1:setArea(createCombatArea(AREA_WAVE3))

function onGetFireValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28133] = 1.08,
    }
	local min = (level / 5) + (magicLevel * 4.5) + 20
	local max = (level / 5) + (magicLevel * 7.6) + 48
	if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat2:setParameter(COMBAT_PARAM_EFFECT, 225)
combat2:setArea(createCombatArea(AREA_WAVE3))

function onGetHolyValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28133] = 1.08,
    }
	local min = (level / 5) + (magicLevel * 4.5) + 20
	local max = (level / 5) + (magicLevel * 7.6) + 48
	if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combat3 = Combat()
combat3:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat3:setParameter(COMBAT_PARAM_EFFECT, 218)
combat3:setArea(createCombatArea(AREA_WAVE3))

function onGetDeathValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28133] = 1.08,
    }
	local min = (level / 5) + (magicLevel * 4.5) + 20
	local max = (level / 5) + (magicLevel * 7.6) + 48
	if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combat4 = Combat()
combat4:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat4:setParameter(COMBAT_PARAM_EFFECT, 217)
combat4:setArea(createCombatArea(AREA_WAVE3))

function onGetEnergyValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28133] = 1.08,
    }
	local min = (level / 5) + (magicLevel * 4.5) + 20
	local max = (level / 5) + (magicLevel * 7.6) + 48
	if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

combat4:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEnergyValues")
combat3:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDeathValues")
combat2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetHolyValues")
combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFireValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	local player = Player(creature)
    playSound(creature, "frost.ogg")
    if player and player:getStorageValue(37040) == 1 then
        combat1:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37041) == 1 then
        combat2:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37042) == 1 then
        combat3:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37043) == 1 then
        combat4:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
