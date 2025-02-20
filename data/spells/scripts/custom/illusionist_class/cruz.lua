local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 291)


local area = createCombatArea({
    {0, 0, 0, 1, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0},
    {1, 1, 1, 3, 1, 1, 1},
    {0, 0, 0, 1, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0}
})
combat:setArea(area)

function onGetFormulaValues(player, level, magicLevel)
    local min = (level / 5) + (magicLevel * 2.8) + 16
    local max = (level / 5) + (magicLevel * 4.4) + 28 
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function createClone(position, playerOutfit, playerName)
    local clone = Game.createMonster("Clone", position)
    if clone then
        clone:setOutfit(playerOutfit)
        clone:rename(playerName)
        addEvent(function()
            if clone then
                clone:remove()
            end
        end, 1000)
    end
end

function onCastSpell(creature, variant)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    local originalPosition = player:getPosition()
    local direction = player:getDirection()
    local playerOutfit = player:getOutfit()
    local playerName = player:getName()

    local clonePositions = {
        {x = originalPosition.x, y = originalPosition.y - 3, z = originalPosition.z},  -- North
        {x = originalPosition.x + 3, y = originalPosition.y, z = originalPosition.z},  -- East
        {x = originalPosition.x - 3, y = originalPosition.y, z = originalPosition.z},  -- West
        {x = originalPosition.x, y = originalPosition.y + 3, z = originalPosition.z}   -- South
    }
    combat:execute(player, Variant(originalPosition))
    for _, pos in ipairs(clonePositions) do
        createClone(Position(pos.x, pos.y, pos.z), playerOutfit, playerName)
    end
    playSound(creature, "arcane_5.ogg")

    return true
end
