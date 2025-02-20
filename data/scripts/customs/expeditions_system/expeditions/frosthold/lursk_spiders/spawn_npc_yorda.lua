local npcPosition = Position(30843, 31287, 7)

local areaFromPos = {30873, 31288, 5}
local areaToPos = {30937, 31324, 7}

local monsterGroups = {
    {monsterTypes = {"Small Lursk Spider"}, maxCount = 20},
    {monsterTypes = {"Giant Lursk Spider"}, maxCount = 20}
}

local spawnInterval = 120 * 1000
local eventDuration = 60 * 60 * 1000

local npcs = {}


local function summonMonstersInArea(fromPos, toPos, monsterTypes, maxMonsters)
    local monsterCount = 0
    for z = fromPos[3], toPos[3] do
        for x = fromPos[1], toPos[1] do
            for y = fromPos[2], toPos[2] do
                local tile = Tile(Position(x, y, z))
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
    end
end


local function summonAllMonstersInArea(fromPos, toPos, monsterGroups)
    for _, group in ipairs(monsterGroups) do
        summonMonstersInArea(fromPos, toPos, group.monsterTypes, group.maxCount)
    end
end

local function removeMonstersAndNPC(npcId, fromPos, toPos)
    for z = fromPos[3], toPos[3] do
        for x = fromPos[1], toPos[1] do
            for y = fromPos[2], toPos[2] do
                local tile = Tile(Position(x, y, z))
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
    end
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function onThinkEvent(npcId, fromPos, toPos, monsterGroups, spawnInterval)
    if npcs[npcId] then
        summonAllMonstersInArea(fromPos, toPos, monsterGroups)
        addEvent(onThinkEvent, spawnInterval, npcId, fromPos, toPos, monsterGroups, spawnInterval)
    end
end

local spawnTimes = {
    "10:40:00",
    "12:40:00",
    "14:40:00",
    "17:30:00",
    "19:30:00",
    "22:00:00",
    "23:30:00",
    "02:30:00"
}

for i, time in ipairs(spawnTimes) do
    local yordaExpedition = GlobalEvent("YordaExpedition" .. i)
    function yordaExpedition.onTime(interval)
        npcs[1] = Game.createNpc("Yorda", npcPosition)
    
        summonAllMonstersInArea(areaFromPos, areaToPos, monsterGroups)
    
        addEvent(onThinkEvent, spawnInterval, 1, areaFromPos, areaToPos, monsterGroups, spawnInterval)
        
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
                        creature:addMapMark(Position(30843, 31287, 7), 22, "Expedition: Lursks Spiders")
                    end
                end
            end
        end
        Game.broadcastMessage("Yorda Has Spawned at East of Frosthold.", MESSAGE_EVENT_ADVANCE)
        return true
    end
    yordaExpedition:time(time)
    yordaExpedition:register()
end