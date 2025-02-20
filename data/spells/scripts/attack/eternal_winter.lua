local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat:setArea(createCombatArea(AREA_CIRCLE5X5))

function onGetFormulaValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 5.5) + 25
	local max = (level / 5) + (magicLevel * 11) + 50

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
combatFire:setParameter(COMBAT_PARAM_EFFECT, 221)
combatFire:setArea(createCombatArea(AREA_CIRCLE5X5))

function onGetFireValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 5.5) + 25
	local max = (level / 5) + (magicLevel * 11) + 50

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
combatHoly:setArea(createCombatArea(AREA_CIRCLE5X5))

function onGetHolyValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 5.5) + 25
	local max = (level / 5) + (magicLevel * 11) + 50

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
combatDeath:setParameter(COMBAT_PARAM_EFFECT, 222)
combatDeath:setArea(createCombatArea(AREA_CIRCLE5X5))

function onGetDeathValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 5.5) + 25
	local max = (level / 5) + (magicLevel * 11) + 50

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
combatEnergy:setParameter(COMBAT_PARAM_EFFECT, 217)
combatEnergy:setArea(createCombatArea(AREA_CIRCLE5X5))

function onGetEnergyValues(player, level, magicLevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [27479] = 1.10,
        [27480] = 1.20,
    }
	local min = (level / 5) + (magicLevel * 5.5) + 25
	local max = (level / 5) + (magicLevel * 11) + 50

    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

combatEnergy:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEnergyValues")
combatDeath:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDeathValues")
combatHoly:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetHolyValues")
combatFire:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFireValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	local player = Player(creature)
    playSound(creature, "frost_3.ogg")
    if player and player:getStorageValue(37020) == 1 then
        combatFire:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37021) == 1 then
        combatHoly:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37022) == 1 then
        combatDeath:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37023) == 1 then
        combatEnergy:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
