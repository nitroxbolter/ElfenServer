local monsterPosition = Position(31516, 31068, 10)
local monsterType = "Hollowborn Zepharix"

local eventDuration = 60 * 60 * 1000
local fromPos = Position(31454, 31041, 10)
local toPos = Position(31538, 31091, 10)

local function announceSpawn()
    for x = fromPos.x, toPos.x do
        for y = fromPos.y, toPos.y do
            local checkPos = Position(x, y, fromPos.z)
            local tile = Tile(checkPos)

            if tile then
                local creature = tile:getTopCreature()
                if creature and creature:isPlayer() then
                    playSoundPlayer(creature, "expedition.ogg")
                    creature:addMapMark(monsterPosition, 23, "Boss: Hollowborn Zepharix")
                    Game.broadcastMessage("The Boss " .. monsterType .. " has spawned on Hallowfall Island.", MESSAGE_EVENT_ADVANCE)
                end
            end
        end
    end
end

local function summonBoss(monsterType, position)
    local tile = Tile(position)
    if tile then
        local creature = tile:getTopCreature()
        if creature then
            if not creature:isMonster() or creature:getName():lower() ~= monsterType:lower() then
            else
                return false
            end
        end
        local monster = Game.createMonster(monsterType, position)
        if monster then
            announceSpawn()
        end
    end
end

local function removeMonster(areaFrom, areaTo, monsterName)
    for x = areaFrom.x, areaTo.x do
        for y = areaFrom.y, areaTo.y do
            local checkPos = Position(x, y, areaFrom.z)
            local tile = Tile(checkPos)

            if tile then
                local creature = tile:getTopCreature()
                if creature and creature:isMonster() and creature:getName():lower() == monsterName:lower() then
                    creature:remove()
                    Game.broadcastMessage("The Boss " .. monsterName .. " has vanished from Hallowfall Island.", MESSAGE_EVENT_ADVANCE)
                end
            end
        end
    end
end

local spawnTimes = {
    "09:00:00",
    "17:00:00",
}

for i, time in ipairs(spawnTimes) do
    local monsterEvent = GlobalEvent("SummonHollowborn" .. i)
    function monsterEvent.onTime(interval)
        summonBoss(monsterType, monsterPosition)
        addEvent(removeMonster, eventDuration, fromPos, toPos, monsterType)
        return true
    end
    monsterEvent:time(time)
    monsterEvent:register()
end
