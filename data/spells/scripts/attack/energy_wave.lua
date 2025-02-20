local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
combat:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetFormulaValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27476] = 1.10,
        [27477] = 1.20,
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

local combatHoly = Combat()
combatHoly:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combatHoly:setParameter(COMBAT_PARAM_EFFECT, 201)
combatHoly:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 57)
combatHoly:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetHolyValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27476] = 1.10,
        [27477] = 1.20,
    }
    local min = (level / 5) + (magicLevel * 4.55) + 20
	local max = (level / 5) + (magicLevel * 7.65) + 48

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combatIce = Combat()
combatIce:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combatIce:setParameter(COMBAT_PARAM_EFFECT, 202)
combatIce:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 56)
combatIce:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetIceValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27476] = 1.10,
        [27477] = 1.20,
    }
    local min = (level / 5) + (magicLevel * 4.6) + 20
	local max = (level / 5) + (magicLevel * 7.7) + 48

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combatDeath = Combat()
combatDeath:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combatDeath:setParameter(COMBAT_PARAM_EFFECT, 218)
combatDeath:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 32)
combatDeath:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetDeathValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27476] = 1.10,
        [27477] = 1.20,
    }
    local min = (level / 5) + (magicLevel * 4.65) + 20
	local max = (level / 5) + (magicLevel * 7.75) + 48

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combatDrown = Combat()
combatDrown:setParameter(COMBAT_PARAM_TYPE, COMBAT_DROWNDAMAGE)
combatDrown:setParameter(COMBAT_PARAM_EFFECT, 220)
combatDrown:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 60)
combatDrown:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetDrownValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27476] = 1.10,
        [27477] = 1.20,
    }
    local min = (level / 5) + (magicLevel * 4.7) + 20
	local max = (level / 5) + (magicLevel * 7.8) + 48

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

combatDrown:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDrownValues")
combatDeath:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDeathValues")
combatIce:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetIceValues")
combatHoly:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetHolyValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	local player = Player(creature)
    playSound(player, "energy_3.ogg")
    if player and player:getStorageValue(37011) == 1 then
        combatDrown:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37010) == 1 then
        combatDeath:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37009) == 1 then
        combatIce:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37008) == 1 then
        combatHoly:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
