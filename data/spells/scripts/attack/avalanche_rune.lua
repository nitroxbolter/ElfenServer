local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

local combatFire = Combat()
combatFire:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combatFire:setParameter(COMBAT_PARAM_EFFECT, 216)
combatFire:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 4)
combatFire:setArea(createCombatArea(AREA_CIRCLE3X3))

local combatEarth = Combat()
combatEarth:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combatEarth:setParameter(COMBAT_PARAM_EFFECT, 46)
combatEarth:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 30)
combatEarth:setArea(createCombatArea(AREA_CIRCLE3X3))

local combatEnergy = Combat()
combatEnergy:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combatEnergy:setParameter(COMBAT_PARAM_EFFECT, 217)
combatEnergy:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 36)
combatEnergy:setArea(createCombatArea(AREA_CIRCLE3X3))


local combatDeath = Combat()
combatDeath:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combatDeath:setParameter(COMBAT_PARAM_EFFECT, 18)
combatDeath:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 32)
combatDeath:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.2) + 7
	local max = (level / 5) + (magicLevel * 2.85) + 16
	return -min, -max
end

function onGetFireValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.28) + 7
	local max = (level / 5) + (magicLevel * 2.92) + 16
	return -min, -max
end

function onGetEarthValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.36) + 7
	local max = (level / 5) + (magicLevel * 2.99) + 16
	return -min, -max
end

function onGetEnergyValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.44) + 7
	local max = (level / 5) + (magicLevel * 3.06) + 16
	return -min, -max
end


function onGetDeathValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.52) + 7
	local max = (level / 5) + (magicLevel * 3.13) + 16
	return -min, -max
end


combatFire:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFireValues")
combatEarth:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEarthValues")
combatEnergy:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEnergyValues")
combatDeath:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDeathValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant, isHotkey)
	local player = Player(creature)
	playSound(creature, "avalanche.ogg")
	if player and player:getStorageValue(37019) == 1 then
        combatDeath:execute(creature, variant)
		return true
    end
	if player and player:getStorageValue(37018) == 1 then
        combatEnergy:execute(creature, variant)
		return true
    end
	if player and player:getStorageValue(37017) == 1 then
        combatEarth:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37016) == 1 then
        combatFire:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
