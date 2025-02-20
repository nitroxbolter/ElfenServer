local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SMALLPLANTS)
combat:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetFormulaValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 3.25) + 5
	local max = (level / 5) + (magicLevel * 6.75) + 30

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
combatFire:setParameter(COMBAT_PARAM_EFFECT, 216)
combatFire:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetFireValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 3.30) + 5
	local max = (level / 5) + (magicLevel * 6.80) + 30

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
combatHoly:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetHolyValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 3.35) + 5
	local max = (level / 5) + (magicLevel * 6.85) + 30

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
combatDeath:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetDeathValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 3.40) + 5
	local max = (level / 5) + (magicLevel * 6.90) + 30

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

local combatEnergy = Combat()
combatEnergy:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combatEnergy:setParameter(COMBAT_PARAM_EFFECT, 219)
combatEnergy:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetEnergyValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 3.45) + 5
	local max = (level / 5) + (magicLevel * 6.95) + 30

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

combatFire:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFireValues")
combatHoly:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetHolyValues")
combatDeath:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDeathValues")
combatEnergy:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEnergyValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	playSound(creature, "earth_4.ogg")
    local player = Player(creature)
    if player and player:getStorageValue(37007) == 1 then
        combatEnergy:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37006) == 1 then
        combatDeath:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37005) == 1 then
        combatHoly:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37004) == 1 then
        combatFire:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
