local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 215)

local area = createCombatArea({
    {0, 1, 0},
    {1, 3, 1},
    {0, 1, 0}
})

combat:setArea(area)

local function doRandomEffect(position, casterId)
    local randX = math.random(-3, 3)
    local randY = math.random(-3, 3)
    local newPos = Position(position.x + randX, position.y + randY, position.z)
    local creature = Tile(newPos):getTopCreature()
    if creature and creature:getId() ~= casterId then
        local damage = math.random(150, 300)
        doTargetCombatHealth(0, creature, COMBAT_ICEDAMAGE, -damage, -damage, CONST_ME_NONE)
        newPos:sendMagicEffect(215)
    end
end

local function doInitialEffect(position, casterId)
    local creatures = Tile(position):getCreatures()
    for _, creature in ipairs(creatures) do
        if creature:getId() ~= casterId then
            local damage = math.random(150, 300)
            doTargetCombatHealth(0, creature, COMBAT_ICEDAMAGE, -damage, -damage, CONST_ME_NONE)
        end
    end
    position:sendMagicEffect(215)
end

function onTargetTile(creature, position)
    local repeatEffect = 30  -- Aumenta o número de repetições para 30
    local interval = 100  -- Mantém o intervalo curto para mais consistência
    local casterId = creature:getId()
    doInitialEffect(position, casterId)
    for i = 1, repeatEffect do
        addEvent(doRandomEffect, i * interval, position, casterId)
    end
end

combat:setCallback(CALLBACK_PARAM_TARGETTILE, "onTargetTile")

function onCastSpell(creature, variant)
    local position = creature:getPosition()
    playSound(creature, "frost_4.ogg")
    combat:execute(creature, variant)
    return true
end

