local npc1Position = Position(31587, 31376, 6)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Varshan", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "00:50:30",
    "02:45:30",
    "04:40:30",
    "06:35:30",
    "08:30:30",
    "10:25:30",
    "12:15:30",
    "15:10:30",
    "17:05:30",
    "19:00:30",
    "21:55:30",
    "23:15:30"
}


for i, time in ipairs(spawnTimes) do
    local VarshaExpedition = GlobalEvent("VarshaExpedition" .. i)
    function VarshaExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31587, 31376, 6), 22, "Expedition: Monstrosity")
                        Game.broadcastMessage("Varsga has spawned on Vardenfell island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    VarshaExpedition:time(time)
    VarshaExpedition:register()
end