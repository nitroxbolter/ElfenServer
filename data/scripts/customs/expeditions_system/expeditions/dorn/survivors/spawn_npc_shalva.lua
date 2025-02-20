local npc1Position = Position(30947, 31028, 6)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Shalva", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "07:05:00",
    "09:05:00",
    "11:05:00",
    "13:05:00",
    "15:05:00",
    "17:05:00",
    "19:05:00",
    "21:05:00",
    "23:05:00",
    "02:05:00",
    "04:05:00",
}


for i, time in ipairs(spawnTimes) do
    local ShalvaExpedition = GlobalEvent("ShalvaExpedition" .. i)
    function ShalvaExpedition.onTime(interval)
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
                        creature:addMapMark(Position(30947, 31028, 6), 22, "Expedition: Survivors")
                        creature:addMapMark(Position(30936, 31038, 7), 22, "Expedition: Survivors")
                        Game.broadcastMessage("Shalva has spawned on Dorn Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    ShalvaExpedition:time(time)
    ShalvaExpedition:register()
end