local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)

local area = createCombatArea(AREA_WAVE7, AREADIAGONAL_WAVE7)
combat:setArea(area)

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 2.8) + 16
	local max = (level / 5) + (magicLevel * 4.4) + 28 
	return -min, -max
end

local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat1:setParameter(COMBAT_PARAM_EFFECT, 53)

local area1 = createCombatArea(AREA_WAVE7, AREADIAGONAL_WAVE7)
combat1:setArea(area1)

function onGetIceValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 2.8) + 16
	local max = (level / 5) + (magicLevel * 4.4) + 28 
	return -min, -max
end

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat2:setParameter(COMBAT_PARAM_EFFECT, 225)

local area2 = createCombatArea(AREA_WAVE7, AREADIAGONAL_WAVE7)
combat2:setArea(area2)

function onGetHolyValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 2.8) + 16
	local max = (level / 5) + (magicLevel * 4.4) + 28 
	return -min, -max
end

local combat3 = Combat()
combat3:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat3:setParameter(COMBAT_PARAM_EFFECT, 187)

local area3 = createCombatArea(AREA_WAVE7, AREADIAGONAL_WAVE7)
combat3:setArea(area3)

function onGetDeathValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 2.8) + 16
	local max = (level / 5) + (magicLevel * 4.4) + 28 
	return -min, -max
end

local combat4 = Combat()
combat4:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat4:setParameter(COMBAT_PARAM_EFFECT, 219)

local area4 = createCombatArea(AREA_WAVE7, AREADIAGONAL_WAVE7)
combat4:setArea(area4)

function onGetEnergyValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 2.8) + 16
	local max = (level / 5) + (magicLevel * 4.4) + 28 
	return -min, -max
end

combat4:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetEnergyValues")
combat3:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetDeathValues")
combat2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetHolyValues")
combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetIceValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


function onCastSpell(creature, variant)
	local player = Player(creature)
	playSound(creature, "fire_2.ogg")
	if player and player:getStorageValue(37039) == 1 then
        combat4:execute(creature, variant)
		return true
    end
	if player and player:getStorageValue(37038) == 1 then
        combat3:execute(creature, variant)
		return true
    end
	if player and player:getStorageValue(37037) == 1 then
        combat2:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37036) == 1 then
        combat1:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
