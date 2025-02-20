local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

---- This Npc, can Walk from a Position to a Position, you need add positions of each tile where npc goes to walk, when he arrives to a destination he come's back to the first position.
--- Enhanced to create citys with some movement villagers, guards, etc.
--- If you don't understand just pm me to Alexv45 on discord.

local walkPos = {
    {x = 32369, y = 32222, z = 7},
    {x = 32369, y = 32221, z = 7},
    {x = 32369, y = 32220, z = 7},
    {x = 32369, y = 32219, z = 7},
    {x = 32369, y = 32218, z = 7},
    {x = 32369, y = 32217, z = 7},
    {x = 32369, y = 32216, z = 7},
    {x = 32369, y = 32215, z = 7},
    {x = 32369, y = 32214, z = 7},
    {x = 32369, y = 32213, z = 7},
    {x = 32369, y = 32212, z = 7},
    {x = 32369, y = 32211, z = 7},
    {x = 32369, y = 32210, z = 7},
    {x = 32369, y = 32209, z = 7},
    {x = 32369, y = 32208, z = 7},
    {x = 32369, y = 32207, z = 7},
    {x = 32369, y = 32206, z = 7},
    {x = 32369, y = 32205, z = 7},
    {x = 32369, y = 32204, z = 7},
    {x = 32369, y = 32203, z = 7},
    {x = 32369, y = 32202, z = 7},
    {x = 32369, y = 32201, z = 7},
    {x = 32369, y = 32200, z = 7},
    {x = 32369, y = 32199, z = 7},
    {x = 32369, y = 32198, z = 7},
    {x = 32369, y = 32197, z = 7},
    {x = 32369, y = 32196, z = 7},
    {x = 32369, y = 32195, z = 7},
    {x = 32369, y = 32194, z = 7},
    {x = 32369, y = 32193, z = 7},
    {x = 32369, y = 32192, z = 7},
    {x = 32369, y = 32191, z = 7},
    {x = 32369, y = 32190, z = 7},
    {x = 32369, y = 32189, z = 7},
    {x = 32369, y = 32188, z = 7},
    {x = 32369, y = 32187, z = 7},
    {x = 32369, y = 32186, z = 7},
    {x = 32369, y = 32185, z = 7},
    {x = 32369, y = 32184, z = 7},
    {x = 32369, y = 32183, z = 7},
    {x = 32369, y = 32182, z = 7},
    {x = 32369, y = 32181, z = 7},
    {x = 32369, y = 32180, z = 7},
    {x = 32369, y = 32179, z = 7},
    {x = 32369, y = 32178, z = 7},
    {x = 32369, y = 32177, z = 7},
}

local currentState = 1
local isMoving = false
local moveDelay = 800

local function doMoveCreature(cid)
    local npc = Creature(cid)
    if not npc then
        return
    end

    local currentPos = npc:getPosition()
    local targetPos = walkPos[currentState]

    if currentPos.y ~= targetPos.y then
        currentPos.y = currentPos.y > targetPos.y and currentPos.y - 1 or currentPos.y + 1
    elseif currentPos.x ~= targetPos.x then
        currentPos.x = currentPos.x > targetPos.x and currentPos.x - 1 or currentPos.x + 1
    end

    npc:teleportTo(currentPos, true)

    if currentPos.x == targetPos.x and currentPos.y == targetPos.y then
        currentState = currentState + 1
        if currentState > #walkPos then
            currentState = 1
        end
    end

    addEvent(doMoveCreature, moveDelay, cid)
end

function onCreatureAppear(cid)
    npcHandler:onCreatureAppear(cid)
end

function onCreatureDisappear(cid)
    npcHandler:onCreatureDisappear(cid)
end

function onCreatureSay(cid, type, msg)
    npcHandler:onCreatureSay(cid, type, msg)
end

function onThink()
    npcHandler:onThink()

    local npc = Npc()
    if npc and not isMoving then
        isMoving = true
        doMoveCreature(npc:getId())
    end
end
