local combat = createCombatObject()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 218)
combat:setFormula(COMBAT_FORMULA_DAMAGE, -250, 0, -550, 0)

	arr = {
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
		{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
		{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0}
	}

local area = createCombatArea(arr)
	setCombatArea(combat, area)


function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end