local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, 244)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 3, 1}}))

function onGetFormulaValues(player, level, magicLevel)
    local min = (level / 5) + (magicLevel * 4) + 75
    local max = (level / 5) + (magicLevel * 10) + 150
    return -min, -max
end

combat0_Brush:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local combat1_Brush = createCombatObject()
setCombatParam(combat1_Brush, COMBAT_PARAM_EFFECT, 244)
setCombatParam(combat1_Brush, COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
setCombatArea(combat1_Brush,createCombatArea({
{1, 1, 1},
{0, 2, 0}}))


function onGetFormulaValues(player, level, magicLevel)
    local min = (level / 5) + (magicLevel * 4) + 75
    local max = (level / 5) + (magicLevel * 10) + 150
    return -min, -max
end

combat1_Brush:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local combat3_Brush = createCombatObject()
setCombatParam(combat3_Brush, COMBAT_PARAM_EFFECT, 244)
setCombatParam(combat3_Brush, COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
setCombatArea(combat3_Brush,createCombatArea({
{1, 1, 1},
{0, 0, 0},
{0, 0, 0},
{0, 2, 0},}))

function onGetFormulaValues(player, level, magicLevel)
    local min = (level / 5) + (magicLevel * 4) + 75
    local max = (level / 5) + (magicLevel * 10) + 150
    return -min, -max
end

combat3_Brush:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, 244)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{1, 1, 1},
{0, 0, 0},
{0, 2, 0}}))

function onGetFormulaValues(player, level, magicLevel)
    local min = (level / 5) + (magicLevel * 4) + 75
    local max = (level / 5) + (magicLevel * 10) + 150
    return -min, -max
end

combat2_Brush:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, 244)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{1},
{0},
{0},
{0},
{2}}))

function onGetFormulaValues(player, level, magicLevel)
    local min = (level / 5) + (magicLevel * 4) + 75
    local max = (level / 5) + (magicLevel * 10) + 150
    return -min, -max
end

combat4_Brush:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


local combat5_Brush = createCombatObject()
setCombatParam(combat5_Brush, COMBAT_PARAM_EFFECT, 244)
setCombatParam(combat5_Brush, COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
setCombatArea(combat5_Brush,createCombatArea({{1},
{0},
{0},
{0},
{0},
{2}}))

function onGetFormulaValues(player, level, magicLevel)
    local min = (level / 5) + (magicLevel * 4) + 75
    local max = (level / 5) + (magicLevel * 10) + 150
    return -min, -max
end

combat5_Brush:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function RunPart(c, cid, var, dirList, dirEmitPos) 
    if isCreature(cid) then
        doCombat(cid, c, var)
        if dirList and dirEmitPos then
            local i = 2
            while i < #dirList do
                SendDistanceShoot(dirEmitPos, {x = dirEmitPos.x - dirList[i], y = dirEmitPos.y - dirList[i + 1], z = dirEmitPos.z}, dirList[1])
                i = i + 2
            end
        end
    end
end


function onCastSpell(creature, var)
    local cid = Player(creature)
    if not cid then
        return false
    end
    playSound(creature, "arcane_3.ogg")
    RunPart(combat0_Brush, cid, var)
    addEvent(function() RunPart(combat1_Brush, cid, var) end, 100)
    addEvent(function() RunPart(combat2_Brush, cid, var) end, 200)
    addEvent(function() RunPart(combat3_Brush, cid, var) end, 300)
    addEvent(function() RunPart(combat4_Brush, cid, var) end, 400)
    addEvent(function() RunPart(combat5_Brush, cid, var) end, 500)
    return true
end
