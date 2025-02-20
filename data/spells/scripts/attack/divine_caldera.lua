local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27471] = 1.10,
        [27473] = 1.10,
        [27472] = 1.20,
        [27474] = 1.20,
    }
    local min = (level / 5) + (magicLevel * 5) + 25
	local max = (level / 5) + (magicLevel * 6.2) + 45

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
combatDeath:setParameter(COMBAT_PARAM_EFFECT, 187)
combatDeath:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetDeathValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27471] = 1.10,
        [27473] = 1.10,
        [27472] = 1.20,
        [27474] = 1.20,
    }
    local min = (level / 5) + (magicLevel * 5) + 25
	local max = (level / 5) + (magicLevel * 6.2) + 45

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
combatIce:setParameter(COMBAT_PARAM_EFFECT, 215)
combatIce:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetIceValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27471] = 1.10,
        [27473] = 1.10,
        [27472] = 1.20,
        [27474] = 1.20,
    }
    local min = (level / 5) + (magicLevel * 5) + 25
	local max = (level / 5) + (magicLevel * 6.2) + 45

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combatEarth = Combat()
combatEarth:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE) 
combatEarth:setParameter(COMBAT_PARAM_EFFECT, 183)
combatEarth:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetEarthValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27471] = 1.10,
        [27473] = 1.10,
        [27472] = 1.20,
        [27474] = 1.20,
    }
    local min = (level / 5) + (magicLevel * 5) + 25
	local max = (level / 5) + (magicLevel * 6.2) + 45

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combatFire = Combat()
combatFire:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE) 
combatFire:setParameter(COMBAT_PARAM_EFFECT, 200)
combatFire:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFireValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27471] = 1.10,
        [27473] = 1.10,
        [27472] = 1.20,
        [27474] = 1.20,
    }
    local min = (level / 5) + (magicLevel * 5) + 25
	local max = (level / 5) + (magicLevel * 6.2) + 45

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end


combatDeath:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDeathValues")
combatFire:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFireValues")
combatEarth:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEarthValues")
combatIce:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetIceValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	local player = Player(creature)
    playSound(player, "divine.ogg")
    if player and player:getStorageValue(37015) == 1 then
        combatDeath:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37014) == 1 then
        combatEarth:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37013) == 1 then
        combatIce:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37012) == 1 then
        combatFire:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
