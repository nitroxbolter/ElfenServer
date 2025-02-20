local npc1Position = Position(31193, 31242, 8)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Lyot", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "01:45:00",
    "03:45:00",
    "05:45:00",
    "07:15:00",
    "08:45:00",
    "09:55:00",
    "13:45:00",
    "15:45:00",
    "17:45:00",
    "19:45:00",
    "21:45:00",
    "09:46:10"
}


for i, time in ipairs(spawnTimes) do
    local lyotExpedition = GlobalEvent("LyotExpedition" .. i)
    function lyotExpedition.onTime(interval)
        spawnNpc(i, npc1Position)
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
                        creature:addMapMark(Position(31193, 31242, 8), 22, "Expedition: Mechanic Goblins")
                        creature:addMapMark(Position(31167, 31264, 7), 22, "Expedition: Mechanic Goblins, Near Boat on Vyrsk Caves.")
                        Game.broadcastMessage("Lyot Has appeared on Vyrsk Caves.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    lyotExpedition:time(time)
    lyotExpedition:register()
end