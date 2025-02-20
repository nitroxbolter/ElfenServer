local thecombat = createCombatObject()

 
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ARROW)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.3, 0, -0.5, 0)
 
local arr = {
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 3, 0, 0, 0}
}
 
local area = createCombatArea(arr)
setCombatArea(thecombat, area)
 
function onTargetTile(cid, pos)
doCombat(cid,combat,positionToVariant(pos))
end
 
setCombatCallback(thecombat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")
 
function onCastSpell(cid, var)
playSound(cid, "arrow_1.ogg")
return doCombat(cid, thecombat, var)
end
