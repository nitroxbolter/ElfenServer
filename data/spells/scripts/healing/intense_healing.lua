local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 3.2) + 20
	local max = (level / 5) + (magicLevel * 5.4) + 40
	return min, max
end

local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat1:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat1:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat1:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGet1FormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 3.35) + 100
	local max = (level / 5) + (magicLevel * 5.55) + 130
	return min, max
end

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat2:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat2:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat2:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGet2FormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 3.50) + 130
	local max = (level / 5) + (magicLevel * 5.70) + 160
	return min, max
end

local combat3 = Combat()
combat3:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat3:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat3:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat3:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGet3FormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 3.65) + 160
	local max = (level / 5) + (magicLevel * 5.85) + 190
	return min, max
end

local combat4 = Combat()
combat4:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat4:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat4:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat4:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGet4FormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 3.80) + 190
	local max = (level / 5) + (magicLevel * 6.00) + 230
	return min, max
end

local combat5 = Combat()
combat5:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat5:setParameter(COMBAT_PARAM_EFFECT, 167)
combat5:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat5:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGet5FormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 3.2) + 80
	local max = (level / 5) + (magicLevel * 5.4) + 110
	return min, max
end

combat5:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGet5FormulaValues")
combat4:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGet4FormulaValues")
combat3:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGet3FormulaValues")
combat2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGet2FormulaValues")
combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGet1FormulaValues")
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	local player = Player(creature)
	playSound(creature, "heal_7.ogg")
	if player and player:getStorageValue(37047) == 1 then
        combat4:execute(creature, variant)
		addEvent(function() combat5:execute(creature, variant) end, 1500)
		return true
    end
	if player and player:getStorageValue(37046) == 1 then
        combat3:execute(creature, variant)
		return true
    end
	if player and player:getStorageValue(37045) == 1 then
        combat2:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37044) == 1 then
        combat1:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
