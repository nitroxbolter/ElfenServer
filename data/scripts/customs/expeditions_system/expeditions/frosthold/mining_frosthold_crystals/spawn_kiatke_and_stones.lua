local npcPosition = Position(30789, 31297, 7)

local areaFromPos = {30749, 31185, 7}
local areaToPos = {30931, 31345, 7}

local itemsArea = {30749, 31185, 7}
local itemsToArea = {30931, 31345, 7}

local eventDuration = 60 * 60 * 1000

local itemIdToSummon = 29345
local transformedItemId = 29346
local maxItems = 25

local newItemId = 29343
local newItemCount = 8

local npcs = {}

local function summonItemsInArea(fromPos, toPos, itemId, maxItems, newItemId, newItemCount)
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
            local ground = tile:getGround()

            if ground and ground:getId() == 28919 and tileInfo.items == 0 and tileInfo.creatures == 0 then
                addEvent(function()
                    Game.createItem(itemId, 1, spawnPos)
                end, 1000)
                itemCount = itemCount + 1
            end
        end
    end

    local newItemAttempts = 0
    local newItemSpawned = 0

    while newItemSpawned < newItemCount and newItemAttempts < newItemCount * 10 do
        newItemAttempts = newItemAttempts + 1
        local spawnPos = Position(math.random(fromPosition.x, toPosition.x), math.random(fromPosition.y, toPosition.y), fromPosition.z)
        local tile = Tile(spawnPos)

        if tile then
            local tileInfo = getTileInfo(spawnPos)
            if tileInfo and tileInfo.items == 0 and tileInfo.creatures == 0 then
                addEvent(function()
                    Game.createItem(newItemId, 1, spawnPos)
                end, 1000)
                newItemSpawned = newItemSpawned + 1
            end
        end
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
                local items = tile:getItems()
                if items then
                    for _, item in ipairs(items) do
                        if item:getId() == itemIdToSummon or item:getId() == transformedItemId or item:getId() == newItemId then
                            item:remove()
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

local spawnTimes = {
    "12:00:00",
    "13:30:00",
    "16:00:00",
    "19:00:00",
    "23:00:00",
    "02:00:00",
    "05:00:00",
}

for i, time in ipairs(spawnTimes) do
    local KiatkeExpedition = GlobalEvent("SummonKiatkeExpe" .. i)
    function KiatkeExpedition.onTime(interval)
        npcs[1] = Game.createNpc("Kiatke", npcPosition)

        summonItemsInArea(itemsArea, itemsToArea, itemIdToSummon, maxItems, newItemId, newItemCount)
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
                        creature:addMapMark(Position(30789, 31297, 7), 22, "Expedition: Frosthold Crystals")
                        Game.broadcastMessage("Kiatke Has Spawned at south of Frosthold Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    KiatkeExpedition:time(time)
    KiatkeExpedition:register()
end
