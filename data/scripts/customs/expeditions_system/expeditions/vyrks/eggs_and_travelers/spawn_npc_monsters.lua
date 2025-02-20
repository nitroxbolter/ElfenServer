local npcPosition = Position(31167, 31239, 7)

local areaFromPos = {31109, 31199, 7}
local areaToPos = {31279, 31268, 7}

local itemsArea =  {31149, 31238, 7}
local itemsToArea = {31261, 31263, 7}

local monsterGroups = {
    {monsterTypes = {"Thief Goblin"}, maxCount = 35},
}

local spawnInterval = 120 * 1000
local eventDuration = 60 * 60 * 1000

local itemIdToSummon = 29338
local transformedItemId = 29337
local maxItems = 12

local newItemId = 29343
local newItemCount = 8

local npcs = {}

local function summonItemsInArea(fromPos, toPos, itemId, maxItems)
    local fromPosition = Position(fromPos[1], fromPos[2], fromPos[3])
    local toPosition = Position(toPos[1], toPos[2], toPos[3])

    local itemCount = 0
    local attempts = 0

    while itemCount < maxItems and attempts < maxItems * 10 do
        attempts = attempts + 1
        local spawnPos = Position(math.random(fromPosition.x, toPosition.x), math.random(fromPosition.y, toPosition.y), fromPosition.z)
        local tile = Tile(spawnPos)

        if tile then
            local tileInfo = getTileInfo(spawnPos)
            if tileInfo and tileInfo.items == 0 and tileInfo.creatures == 0 then
                addEvent(function()
                    Game.createItem(itemId, 1, spawnPos)
                end, 1000)

                itemCount = itemCount + 1
            end
        end
    end
    for i = 1, newItemCount do
        local spawnPos = Position(math.random(fromPosition.x, toPosition.x), math.random(fromPosition.y, toPosition.y), fromPosition.z)
        local tile = Tile(spawnPos)
        
        if tile then
            local tileInfo = getTileInfo(spawnPos)
            if tileInfo and tileInfo.items == 0 and tileInfo.creatures == 0 then
                addEvent(function()
                    Game.createItem(newItemId, 1, spawnPos)
                end, 1000)
            end
        end
    end
end

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
            local monster = Game.createMonster(randomMonsterType, spawnPos)
            if monster and monster:getName():lower() == "traveler from vyrsk" then
                monster:setNoMove(true)
            end
        end
    end
end


local function summonAllMonstersInArea(fromPos, toPos, monsterGroups)
    for _, group in ipairs(monsterGroups) do
        summonMonstersInArea(fromPos, toPos, group.monsterTypes, group.maxCount)
    end
end

local function removeMonstersAndItemsAndNPC(npcId, fromPos, toPos)
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
    for x = fromPosition.x, toPosition.x do
        for y = fromPosition.y, toPosition.y do
            local tile = Tile(Position(x, y, fromPosition.z))
            if tile then
                for _, itemId in ipairs({itemIdToSummon, transformedItemId, newItemId}) do
                    local items = tile:getItems()
                    if items then
                        for _, item in ipairs(items) do
                            if item:getId() == itemId then
                                item:remove()
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
    summonAllMonstersInArea(fromPos, toPos, monsterGroups)
    addEvent(onThinkEvent, spawnInterval, npcId, fromPos, toPos, monsterGroups, spawnInterval)
end

local spawnTimes = {
    "10:00:00",
    "12:00:00",
    "14:00:00",
    "16:00:00",
    "19:00:00",
    "21:00:00",
    "23:00:00",
    "01:00:00",
    "03:00:00",
    "05:00:00",
}

for i, time in ipairs(spawnTimes) do
    local hotharnExpedition = GlobalEvent("SummonEagleNests" .. i)
    function hotharnExpedition.onTime(interval)
        npcs[1] = Game.createNpc("Hotharn", npcPosition)

        summonAllMonstersInArea(areaFromPos, areaToPos, monsterGroups)
        summonItemsInArea(itemsArea, itemsToArea, itemIdToSummon, maxItems)

        addEvent(onThinkEvent, spawnInterval, 1, areaFromPos, areaToPos, monsterGroups, spawnInterval)
        addEvent(removeMonstersAndItemsAndNPC, eventDuration, 1, areaFromPos, areaToPos)


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
                        creature:addMapMark(Position(31167, 31239, 7), 22, "Expedition: Eagle Eggs")
                        Game.broadcastMessage("Hotharn Has Spawned in the middle of Vyrsk Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    hotharnExpedition:time(time)
    hotharnExpedition:register()
end