local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_BIGCLOUDS)
combat:setArea(createCombatArea(AREA_CIRCLE6X6))

function onGetFormulaValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28132] = 1.12,
    }
	local min = (level / 5) + (magicLevel * 4) + 75
	local max = (level / 5) + (magicLevel * 10) + 150
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
combatHoly:setArea(createCombatArea(AREA_CIRCLE6X6))

function onGetHolyValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28132] = 1.12,
    }
	local min = (level / 5) + (magicLevel * 4) + 75
	local max = (level / 5) + (magicLevel * 10) + 150
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
combatEarth:setParameter(COMBAT_PARAM_EFFECT, 182)
combatEarth:setArea(createCombatArea(AREA_CIRCLE6X6))

function onGetEarthValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
		[28132] = 1.12,
    }
	local min = (level / 5) + (magicLevel * 4) + 75
	local max = (level / 5) + (magicLevel * 10) + 150
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
combatDeath:setArea(createCombatArea(AREA_CIRCLE6X6))

function onGetDeathValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28132] = 1.12,
    }
	local min = (level / 5) + (magicLevel * 4) + 75
	local max = (level / 5) + (magicLevel * 10) + 150
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
combatIce:setParameter(COMBAT_PARAM_EFFECT, 205)
combatIce:setArea(createCombatArea(AREA_CIRCLE6X6))

function onGetIceValues(player, level, magicLevel)
	local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28132] = 1.12,
    }
	local min = (level / 5) + (magicLevel * 4) + 75
	local max = (level / 5) + (magicLevel * 10) + 150
	if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end


combatIce:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetIceValues")
combatDeath:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDeathValues")
combatEarth:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEarthValues")
combatHoly:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetHolyValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local COOLDOWN_STORAGE = 309456
local COOLDOWN_TIME = 40

function onCastSpell(creature, variant)
	local player = Player(creature)
    local currentTime = os.time()
    local lastCastTime = creature:getStorageValue(COOLDOWN_STORAGE)
    if lastCastTime < currentTime then
        creature:setStorageValue(COOLDOWN_STORAGE, currentTime + COOLDOWN_TIME)
        playSound(creature, "thunder.ogg")
	    if player and player:getStorageValue(37027) == 1 then
            combatIce:execute(creature, variant)
		    return true
        end
	    if player and player:getStorageValue(37026) == 1 then
            combatDeath:execute(creature, variant)
		    return true
        end
	    if player and player:getStorageValue(37025) == 1 then
            combatEarth:execute(creature, variant)
		    return true
        end
        if player and player:getStorageValue(37024) == 1 then
            combatHoly:execute(creature, variant)
		    return true
        end
        return combat:execute(creature, variant)
    else
        local remainingCooldown = lastCastTime - currentTime
        creature:sendTextMessage(MESSAGE_INFO_DESCR, "You must wait " .. remainingCooldown .. " seconds.")
        creature:getPosition():sendMagicEffect(CONST_ME_POFF)
        return false
    end
end
