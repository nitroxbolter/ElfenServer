local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SMALLPLANTS)
combat:setArea(createCombatArea(AREA_RING1_BURST3))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 7)
	local max = (level / 5) + (maglevel * 10.5)
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


function onCastSpell(creature, var)
	if not creature or not creature:isPlayer() then
		return false
	end
	playSound(creature, "earth_2.ogg")
	if combat:execute(creature, var) then
		return true
	end
	return false
end
