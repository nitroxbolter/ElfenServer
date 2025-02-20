local npcPosition = Position(31257, 31286, 7)

local areaFromPos = {31202, 31201, 7}
local areaToPos = {31275, 31307, 7}


local monsterTypes = {"Island Eagle"}

local maxMonsters = 35

local spawnInterval = 120 * 1000
local eventDuration = 60 * 60 * 1000


local npcs = {}

local function summonMonstersInArea(fromPos, toPos, monsterTypes, maxMonsters)
    local fromPosition = Position(fromPos[1], fromPos[2], fromPos[3])
    local toPosition = Position(toPos[1], toPos[2], toPos[3])
    
    local monsterCount = 0
    for x = fromPosition.x, toPosition.x do
        for y = fromPosition.y, toPosition.y do
            local tile = Tile(Position(x, y, fromPosition.z))
            if tile then
                local creatures = tile:getCreatures()
                if creatures then
                    for _, creature in ipairs(creatures) do
                        for _, monsterType in ipairs(monsterTypes) do
                            if creature:isMonster() and creature:getName():lower() == monsterType:lower() then
                                monsterCount = monsterCount + 1
                            end
                        end
                    end
                end
            end
        end
    end

    if monsterCount < maxMonsters then
        for i = 1, (maxMonsters - monsterCount) do
            local spawnPos = Position(math.random(fromPosition.x, toPosition.x), math.random(fromPosition.y, toPosition.y), fromPosition.z)
            local randomMonsterType = monsterTypes[math.random(#monsterTypes)]
            Game.createMonster(randomMonsterType, spawnPos)
        end
    end
end


local function removeMonstersAndNPC(npcId, fromPos, toPos)
    local fromPosition = Position(fromPos[1], fromPos[2], fromPos[3])
    local toPosition = Position(toPos[1], toPos[2], toPos[3])

    for x = fromPosition.x, toPosition.x do
        for y = fromPosition.y, toPosition.y do
            local tile = Tile(Position(x, y, fromPosition.z))
            if tile then
                local creatures = tile:getCreatures()
                if creatures then
                    for _, creature in ipairs(creatures) do
                        if creature:isMonster() then
                            creature:remove()
                        end
                    end
                end
            end
        end
    end
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end


local function onThinkEvent(npcId, fromPos, toPos, monsterTypes, maxMonsters, spawnInterval)
    summonMonstersInArea(fromPos, toPos, monsterTypes, maxMonsters)
    addEvent(onThinkEvent, spawnInterval, npcId, fromPos, toPos, monsterTypes, maxMonsters, spawnInterval)
end


local spawnTimes = {
    "09:00:00",
    "11:00:00",
    "13:00:00",
    "15:00:00",
    "18:00:00",
    "20:00:00"
}

for i, time in ipairs(spawnTimes) do
    local rakkaExpedition = GlobalEvent("SummonEagleExpedition" .. i)
    function rakkaExpedition.onTime(interval)
        npcs[1] = Game.createNpc("Rakka", npcPosition)

        summonMonstersInArea(areaFromPos, areaToPos, monsterTypes, maxMonsters)
        addEvent(onThinkEvent, spawnInterval, 1, areaFromPos, areaToPos, monsterTypes, maxMonsters, spawnInterval)
        addEvent(removeMonstersAndNPC, eventDuration, 1, areaFromPos, areaToPos)

        local fromPosX = Position(30726, 30879, 7)
        local toPosX = Position(31758, 31485, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(31257, 31286, 7), 22, "Expedition: Island Eagles")
                        Game.broadcastMessage("Rakka has spawned on Vyrsk Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    rakkaExpedition:time(time)
    rakkaExpedition:register()
end