local combat21_Brush = createCombatObject()
setCombatParam(combat21_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat21_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat21_Brush,createCombatArea({{1, 1, 1},
{0, 2, 1}}))
combat21_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 2000ms
local combat20_Brush = createCombatObject()
setCombatParam(combat20_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat20_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat20_Brush,createCombatArea({{1, 2, 0},
{1, 1, 1}}))
combat20_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1900ms
local combat19_Brush = createCombatObject()
setCombatParam(combat19_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat19_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat19_Brush,createCombatArea({{0, 1, 1},
{0, 0, 1},
{2, 0, 1}}))
combat19_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1800ms
local combat18_Brush = createCombatObject()
setCombatParam(combat18_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat18_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat18_Brush,createCombatArea({{1, 1, 1},
{1, 0, 0},
{0, 0, 2}}))
combat18_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1700ms
local combat17_Brush = createCombatObject()
setCombatParam(combat17_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat17_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat17_Brush,createCombatArea({{0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 1},
{1, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 1, 0},
{1, 1, 1, 1, 1, 0}}))
combat17_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1600ms
local combat16_Brush = createCombatObject()
setCombatParam(combat16_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat16_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat16_Brush,createCombatArea({{1, 1, 1, 1, 1, 1, 1},
{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0}}))
combat16_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1500ms
local combat15_Brush = createCombatObject()
setCombatParam(combat15_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat15_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat15_Brush,createCombatArea({{0, 0, 0, 2, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 1, 0},
{1, 1, 1, 1, 1, 1, 1, 0}}))
combat15_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1400ms
local combat14_Brush = createCombatObject()
setCombatParam(combat14_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat14_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat14_Brush,createCombatArea({{1, 1, 1, 1, 1, 1, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 2, 0, 0, 0, 0}}))
combat14_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1300ms
local combat13_Brush = createCombatObject()
setCombatParam(combat13_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat13_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat13_Brush,createCombatArea({{1, 0, 0, 0, 0},
{1, 0, 0, 0, 0},
{1, 0, 0, 0, 0},
{1, 0, 0, 0, 2},
{1, 0, 0, 0, 0},
{1, 0, 0, 0, 0},
{1, 0, 0, 0, 0},
{1, 1, 1, 1, 0}}))
combat13_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1200ms
local combat12_Brush = createCombatObject()
setCombatParam(combat12_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat12_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat12_Brush,createCombatArea({{0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 1},
{2, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 1, 0},
{1, 1, 1, 1, 1, 0}}))
combat12_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1100ms
local combat11_Brush = createCombatObject()
setCombatParam(combat11_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat11_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat11_Brush,createCombatArea({{1, 1, 1, 1, 1, 1, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 2, 0, 0, 0, 0, 0}}))
combat11_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1000ms
local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{1, 1, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 2},
{1, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0}}))
combat10_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 900ms
local combat9_Brush = createCombatObject()
setCombatParam(combat9_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat9_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat9_Brush,createCombatArea({{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}}))
combat9_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 800ms
local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 1}}))
combat8_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 700ms
local combat7_Brush = createCombatObject()
setCombatParam(combat7_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat7_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat7_Brush,createCombatArea({{0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 1},
{2, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 1, 0}}))
combat7_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 600ms
local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{1, 1, 1, 1, 1, 1, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 2, 0, 0, 0, 0, 0, 0}}))
combat6_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 500ms
local combat5_Brush = createCombatObject()
setCombatParam(combat5_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat5_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat5_Brush,createCombatArea({{1, 1, 1, 1, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 2}}))
combat5_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 400ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 2}}))
combat4_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 300ms
local combat3_Brush = createCombatObject()
setCombatParam(combat3_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat3_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat3_Brush,createCombatArea({{0, 0, 0, 0, 0, 0, 2},
{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0}}))
combat3_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 200ms
local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{0, 0, 0, 0, 0, 0, 2},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 1, 1, 0, 0}}))
combat2_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 100ms
local combat1_Brush = createCombatObject()
setCombatParam(combat1_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat1_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat1_Brush,createCombatArea({{0, 2, 0, 0},
{0, 0, 0, 0},
{0, 0, 0, 0},
{0, 0, 0, 0},
{0, 0, 0, 0},
{0, 0, 0, 0},
{1, 1, 1, 1}}))
combat1_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, 304)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{2, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1}}))
combat0_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)


local function RunPart(c,cid,var,dirList,dirEmitPos) 
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil and dirEmitPos ~= nil) then
			local i = 2;
			while (i < #dirList) do
				doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				i = i + 2
			end		
		end
	end
end

local spell = Spell("instant")

	function spell.onCastSpell(creature, var)
		local cid = creature:getId()
		addEvent(RunPart,6500,combat21_Brush,cid,var)
		addEvent(RunPart,6200,combat20_Brush,cid,var)
		addEvent(RunPart,5900,combat19_Brush,cid,var)
		addEvent(RunPart,5600,combat18_Brush,cid,var)
		addEvent(RunPart,5200,combat17_Brush,cid,var)
		addEvent(RunPart,4800,combat16_Brush,cid,var)
		addEvent(RunPart,4400,combat15_Brush,cid,var)
		addEvent(RunPart,4000,combat14_Brush,cid,var)
		addEvent(RunPart,3700,combat13_Brush,cid,var)
		addEvent(RunPart,3300,combat12_Brush,cid,var)
		addEvent(RunPart,3100,combat11_Brush,cid,var)
		addEvent(RunPart,2800,combat10_Brush,cid,var)
		addEvent(RunPart,2400,combat9_Brush,cid,var)
		addEvent(RunPart,2000,combat8_Brush,cid,var)
		addEvent(RunPart,1600,combat7_Brush,cid,var)
		addEvent(RunPart,1400,combat6_Brush,cid,var)
		addEvent(RunPart,1200,combat5_Brush,cid,var)
		addEvent(RunPart,900,combat4_Brush,cid,var)
		addEvent(RunPart,700,combat3_Brush,cid,var)
		addEvent(RunPart,400,combat2_Brush,cid,var)
		addEvent(RunPart,100,combat1_Brush,cid,var)
		RunPart(combat0_Brush,cid,var)
		creature:say("Arodis start a wave attack, try move before is to late!", TALKTYPE_MONSTER_YELL)
		return true
end

spell:name("arodis attack")
spell:words("###1131")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(true)
spell:register()