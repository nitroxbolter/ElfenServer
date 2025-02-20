local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_NONE) 
combat:setArea(createCombatArea(AREA_CIRCLE3x1))

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 1.4) + 8
	local max = (level / 5) + (magicLevel * 2.2) + 14
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function applyEffects(creatureId, effectPositions, duration)
    local creature = Creature(creatureId)
    if not creature or duration <= 0 then return end

    local position = creature:getPosition()
    if not position then return end

    local effects = {312, 312, 312, 312, 309, 309, 309, 309}
    local damagePositions = {}

    for i, offset in ipairs(effectPositions) do
        local effectPos = Position(position.x + offset.x, position.y + offset.y, position.z)

        -- Send the visual effect at the predefined positions
        SendMagicEffect(effectPos, effects[i])
    end

    -- Apply area damage around the caster
    combat:execute(creature, Variant(position))

    -- Rotate the offsets
    local first = table.remove(effectPositions, 1)
    table.insert(effectPositions, first)

    addEvent(applyEffects, 1000, creatureId, effectPositions, duration - 1000)
end

function onCastSpell(creature, var)
    if not creature then return false end

    local initialPositions = {
        {x = 2, y = 0},  -- East
        {x = -2, y = 0}, -- West
        {x = 0, y = 2},  -- South
        {x = 0, y = -2},  -- North
        {x = 1, y = 1},   -- 2 SQM Southeast
        {x = -1, y = -1}, -- 2 SQM Northwest
        {x = -1, y = 1},  -- 2 SQM Southwest
        {x = 1, y = -1}   -- 2 SQM Northeast
    }

    -- Validate that initialPositions is not nil or empty
    if not initialPositions or #initialPositions == 0 then
        return false
    end
    playSound(creature, "arcane_2.ogg")
    applyEffects(creature:getId(), initialPositions, 8000)
    return true
end
