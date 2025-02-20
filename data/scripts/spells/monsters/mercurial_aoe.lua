local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0}}))
combat0_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 2000ms
local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0}}))
combat2_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1900ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0}}))
combat4_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1800ms
local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0}}))
combat6_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1700ms
local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0},
{0, 0, 2, 0, 0}}))
combat8_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1600ms
local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 3, 0, 0}}))
combat10_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1500ms
local combat11_Brush = createCombatObject()
setCombatParam(combat11_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat11_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat11_Brush,createCombatArea({{0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 1, 0},
{2, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 1}}))
combat11_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1400ms
local combat12_Brush = createCombatObject()
setCombatParam(combat12_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat12_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat12_Brush,createCombatArea({{1, 0, 0, 0, 1},
{0, 1, 2, 1, 0},
{0, 0, 1, 0, 0}}))
combat12_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1300ms
local combat13_Brush = createCombatObject()
setCombatParam(combat13_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat13_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat13_Brush,createCombatArea({{0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 1, 0},
{2, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 1}}))
combat13_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1200ms
local combat14_Brush = createCombatObject()
setCombatParam(combat14_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat14_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat14_Brush,createCombatArea({{1, 0, 2, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
combat14_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1100ms
local combat15_Brush = createCombatObject()
setCombatParam(combat15_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat15_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat15_Brush,createCombatArea({{0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 1, 0},
{2, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 1}}))
combat15_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 1000ms
local combat16_Brush = createCombatObject()
setCombatParam(combat16_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat16_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat16_Brush,createCombatArea({{0, 0, 2, 0, 0},
{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
combat16_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 900ms
local combat17_Brush = createCombatObject()
setCombatParam(combat17_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat17_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat17_Brush,createCombatArea({{0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 1, 0},
{2, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 1}}))
combat17_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 800ms
local combat18_Brush = createCombatObject()
setCombatParam(combat18_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat18_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat18_Brush,createCombatArea({{0, 0, 2, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
combat18_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 700ms
local combat19_Brush = createCombatObject()
setCombatParam(combat19_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat19_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat19_Brush,createCombatArea({{0, 0, 0, 0, 1},
{0, 0, 0, 1, 0},
{2, 0, 1, 0, 0},
{0, 0, 0, 1, 0},
{0, 0, 0, 0, 1}}))
combat19_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 600ms
local combat20_Brush = createCombatObject()
setCombatParam(combat20_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat20_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat20_Brush,createCombatArea({{0, 0, 2, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
combat20_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 500ms
local combat21_Brush = createCombatObject()
setCombatParam(combat21_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat21_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat21_Brush,createCombatArea({{0, 0, 0, 1},
{0, 0, 1, 0},
{2, 1, 0, 0},
{0, 0, 1, 0},
{0, 0, 0, 1}}))
combat21_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 400ms
local combat22_Brush = createCombatObject()
setCombatParam(combat22_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat22_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat22_Brush,createCombatArea({{0, 0, 2, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
combat22_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 300ms
local combat23_Brush = createCombatObject()
setCombatParam(combat23_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat23_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat23_Brush,createCombatArea({{0, 0, 1},
{0, 1, 0},
{3, 0, 0},
{0, 1, 0},
{0, 0, 1}}))
combat23_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 200ms
local combat25_Brush = createCombatObject()
setCombatParam(combat25_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat25_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat25_Brush,createCombatArea({{0, 0, 1},
{0, 1, 0},
{1, 2, 0},
{0, 1, 0},
{0, 0, 1}}))
combat25_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 100ms
local combat27_Brush = createCombatObject()
setCombatParam(combat27_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat27_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat27_Brush,createCombatArea({{0, 0, 1},
{0, 1, 0},
{1, 0, 2},
{0, 1, 0},
{0, 0, 1}}))
combat27_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

-- Areas/Combat for 0ms
local combat29_Brush = createCombatObject()
setCombatParam(combat29_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat29_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat29_Brush,createCombatArea({{0, 0, 1, 0},
{0, 1, 0, 0},
{1, 0, 0, 2},
{0, 1, 0, 0},
{0, 0, 1, 0}}))
combat29_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

local combat31_Brush = createCombatObject()
setCombatParam(combat31_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat31_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat31_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 0, 0, 0},
{1, 0, 0, 0, 2},
{0, 1, 0, 0, 0},
{0, 0, 1, 0, 0}}))
combat31_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)

local combat33_Brush = createCombatObject()
setCombatParam(combat33_Brush, COMBAT_PARAM_EFFECT, 288)
setCombatParam(combat33_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat33_Brush,createCombatArea({{0, 0, 1, 0, 0, 0},
{0, 1, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 2},
{0, 1, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 0}}))
combat33_Brush:setFormula(COMBAT_FORMULA_DAMAGE, -3000, 0, -5000, 0)




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
		RunPart(combat0_Brush,cid,var)
		addEvent(RunPart,200,combat2_Brush,cid,var)
		addEvent(RunPart,400,combat4_Brush,cid,var)
		addEvent(RunPart,600,combat6_Brush,cid,var)
		addEvent(RunPart,800,combat8_Brush,cid,var)
		addEvent(RunPart,1000,combat10_Brush,cid,var)
		addEvent(RunPart,1100,combat11_Brush,cid,var)
		addEvent(RunPart,1200,combat12_Brush,cid,var)
		addEvent(RunPart,1300,combat13_Brush,cid,var)
		addEvent(RunPart,1400,combat14_Brush,cid,var)
		addEvent(RunPart,1500,combat15_Brush,cid,var)
		addEvent(RunPart,1600,combat16_Brush,cid,var)
		addEvent(RunPart,1700,combat17_Brush,cid,var)
		addEvent(RunPart,1800,combat18_Brush,cid,var)
		addEvent(RunPart,1900,combat19_Brush,cid,var)
		addEvent(RunPart,2000,combat20_Brush,cid,var)
		addEvent(RunPart,2100,combat21_Brush,cid,var)
		addEvent(RunPart,2200,combat22_Brush,cid,var)
		addEvent(RunPart,2300,combat23_Brush,cid,var)
		addEvent(RunPart,2500,combat25_Brush,cid,var)
		addEvent(RunPart,2700,combat27_Brush,cid,var)
		addEvent(RunPart,2900,combat29_Brush,cid,var)
		addEvent(RunPart,3100,combat31_Brush,cid,var)
		addEvent(RunPart,3300,combat33_Brush,cid,var)
		creature:say("Arrows will start passing over Mercurial, move away from him!", TALKTYPE_MONSTER_YELL)
		return true
end

spell:name("mercurial aoe")
spell:words("###1132")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(true)
spell:register()