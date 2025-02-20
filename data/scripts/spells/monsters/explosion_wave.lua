local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONHIT)
combat:setFormula(COMBAT_FORMULA_DAMAGE, -280, 0, -450, 0)
arr = {
{1, 1, 1},
{1, 1, 1},
{0, 1, 0},
{0, 3, 0}
}

	local area = createCombatArea(arr)
	combat:setArea(area)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:name("explosion wave")
spell:words("###481")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(true)
spell:needDirection(true)
spell:register()