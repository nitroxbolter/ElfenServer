local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_USECHARGES, true)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, skill, attack, factor)
	local min = (player:getLevel() / 5) + (skill * attack * 0.02) + 4
	local max = (player:getLevel() / 5) + (skill * attack * 0.03) + 6
	return -min, -max
end

local combatFire = Combat()
combatFire:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combatFire:setParameter(COMBAT_PARAM_EFFECT, 221)
combatFire:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combatFire:setParameter(COMBAT_PARAM_USECHARGES, true)
combatFire:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFireValues(player, skill, attack, factor)
	local min = (player:getLevel() / 5) + (skill * attack * 0.02) + 4
	local max = (player:getLevel() / 5) + (skill * attack * 0.03) + 6
	return -min, -max
end

local combatEarth = Combat()
combatEarth:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combatEarth:setParameter(COMBAT_PARAM_EFFECT, 182)
combatEarth:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combatEarth:setParameter(COMBAT_PARAM_USECHARGES, true)
combatEarth:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetEarthValues(player, skill, attack, factor)
	local min = (player:getLevel() / 5) + (skill * attack * 0.02) + 4
	local max = (player:getLevel() / 5) + (skill * attack * 0.03) + 6
	return -min, -max
end

local combatIce = Combat()
combatIce:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combatIce:setParameter(COMBAT_PARAM_EFFECT, 205)
combatIce:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combatIce:setParameter(COMBAT_PARAM_USECHARGES, true)
combatIce:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetIceValues(player, skill, attack, factor)
	local min = (player:getLevel() / 5) + (skill * attack * 0.02) + 4
	local max = (player:getLevel() / 5) + (skill * attack * 0.03) + 6
	return -min, -max
end

local combatDeath = Combat()
combatDeath:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combatDeath:setParameter(COMBAT_PARAM_EFFECT, 220)
combatDeath:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combatDeath:setParameter(COMBAT_PARAM_USECHARGES, true)
combatDeath:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetDeathValues(player, skill, attack, factor)
	local min = (player:getLevel() / 5) + (skill * attack * 0.02) + 4
	local max = (player:getLevel() / 5) + (skill * attack * 0.03) + 6
	return -min, -max
end

combatDeath:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetDeathValues")
combatIce:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetIceValues")
combatEarth:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetEarthValues")
combatFire:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFireValues")
combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	local player = Player(creature)
	playSound(creature, "mort_4.ogg")
	if player and player:getStorageValue(37031) == 1 then
        combatDeath:execute(creature, variant)
		return true
    end
	if player and player:getStorageValue(37030) == 1 then
        combatIce:execute(creature, variant)
		return true
    end
	if player and player:getStorageValue(37029) == 1 then
        combatEarth:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37028) == 1 then
        combatFire:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
