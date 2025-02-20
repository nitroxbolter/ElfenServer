local npc1Position = Position(30786, 31205, 7)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Kronzon", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "07:45:00",
    "09:45:00",
    "11:45:00",
    "13:45:00",
    "15:45:00",
    "17:45:00",
    "19:45:00",
    "21:45:00",
    "23:45:00"
}


for i, time in ipairs(spawnTimes) do
    local kronzonExpedition = GlobalEvent("KronzonExpedition" .. i)
    function kronzonExpedition.onTime(interval)
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
                        creature:addMapMark(Position(30786, 31205, 7), 22, "Expedition: Find Lost Items")
                        Game.broadcastMessage("Kronzon has spawned on Frosthold island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    kronzonExpedition:time(time)
    kronzonExpedition:register()
end