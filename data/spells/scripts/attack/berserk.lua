local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_USECHARGES, true)
combat:setArea(createCombatArea(AREA_SQUARE1X1))


local earthCombat = Combat()
earthCombat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
earthCombat:setParameter(COMBAT_PARAM_EFFECT, 47)
earthCombat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
earthCombat:setParameter(COMBAT_PARAM_USECHARGES, true)
earthCombat:setArea(createCombatArea(AREA_SQUARE1X1))

local combatDeath = Combat()
combatDeath:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combatDeath:setParameter(COMBAT_PARAM_EFFECT, 39)
combatDeath:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combatDeath:setParameter(COMBAT_PARAM_USECHARGES, true)
combatDeath:setArea(createCombatArea(AREA_SQUARE1X1))

local combatEnergy = Combat()
combatEnergy:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combatEnergy:setParameter(COMBAT_PARAM_EFFECT, 204)
combatEnergy:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combatEnergy:setParameter(COMBAT_PARAM_USECHARGES, true)
combatEnergy:setArea(createCombatArea(AREA_SQUARE1X1))

local combatIce = Combat()
combatIce:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combatIce:setParameter(COMBAT_PARAM_EFFECT, 42)
combatIce:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combatIce:setParameter(COMBAT_PARAM_USECHARGES, true)
combatIce:setArea(createCombatArea(AREA_SQUARE1X1))

function onGetFormulaValues(player, skill, attack, factor)
    local min = (player:getLevel() / 5) + (skill * attack * 0.03) + 7
	local max = (player:getLevel() / 5) + (skill * attack * 0.05) + 11
	return -min, -max

end

function onGetFireValues(player, skill, attack, factor)
    
    local min = (player:getLevel() / 5) + (skill * attack * 0.04) + 9
    local max = (player:getLevel() / 5) + (skill * attack * 0.06) + 12
	  return -min, -max
end

function iceFormula(player, skill, attack, factor)
	local min = (player:getLevel() / 5) + (skill * attack * 0.05) + 11
	local max = (player:getLevel() / 5) + (skill * attack * 0.07) + 14
	return -min, -max
end

function deathFormula(player, skill, attack, factor)
	local min = (player:getLevel() / 5) + (skill * attack * 0.06) + 13
	local max = (player:getLevel() / 5) + (skill * attack * 0.08) + 16
	return -min, -max
end

function energyFormula(player, skill, attack, factor)
	local min = (player:getLevel() / 5) + (skill * attack * 0.08) + 16
	local max = (player:getLevel() / 5) + (skill * attack * 0.10) + 18
	return -min, -max
end

combatIce:setCallback(CALLBACK_PARAM_SKILLVALUE, "iceFormula")
combatEnergy:setCallback(CALLBACK_PARAM_SKILLVALUE, "energyFormula")
combatDeath:setCallback(CALLBACK_PARAM_SKILLVALUE, "deathFormula")
combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
earthCombat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFireValues")

function onCastSpell(creature, variant)
    local player = Player(creature)
    playSound(player, "berserk.ogg")
    if player and player:getStorageValue(37003) == 1 then
        combatEnergy:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37002) == 1 then
        combatDeath:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37001) == 1 then
        combatIce:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37000) == 1 then
        earthCombat:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end