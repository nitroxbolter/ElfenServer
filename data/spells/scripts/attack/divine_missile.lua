local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.9) + 8
	local max = (level / 5) + (magicLevel * 3) + 18
	return -min, -max
end

local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat1:setParameter(COMBAT_PARAM_EFFECT, 213)
combat1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 4)

function onGetFireValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.9) + 8
	local max = (level / 5) + (magicLevel * 3) + 18
	return -min, -max
end

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat2:setParameter(COMBAT_PARAM_EFFECT, 183)
combat2:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 15)

function onGetEarthValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.9) + 8
	local max = (level / 5) + (magicLevel * 3) + 18
	return -min, -max
end

local combat3 = Combat()
combat3:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat3:setParameter(COMBAT_PARAM_EFFECT, 218)
combat3:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 11)

function onGetDeathValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.9) + 8
	local max = (level / 5) + (magicLevel * 3) + 18
	return -min, -max
end

local combat4 = Combat()
combat4:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat4:setParameter(COMBAT_PARAM_EFFECT, 204)
combat4:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 5)

function onGetEnergyValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.9) + 8
	local max = (level / 5) + (magicLevel * 3) + 18
	return -min, -max
end

combat4:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEnergyValues")
combat3:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDeathValues")
combat2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEarthValues")
combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFireValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	local player = Player(creature)
	playSound(creature, "divine_2.ogg")
	if player and player:getStorageValue(37051) == 1 then
        combat4:execute(creature, variant)
		return true
    end
	if player and player:getStorageValue(37050) == 1 then
        combat3:execute(creature, variant)
		return true
    end
	if player and player:getStorageValue(37049) == 1 then
        combat2:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37048) == 1 then
        combat1:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
