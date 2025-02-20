local npc1Position = Position(31572, 31368, 6)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Ryfus", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "05:03:00",
    "08:03:00",
    "10:03:00",
    "12:03:00",
    "14:03:00",
    "16:03:00",
    "18:03:00",
    "20:03:00",
    "22:03:00",
    "01:03:00",
    "03:03:00",
}


for i, time in ipairs(spawnTimes) do
    local RyfusExpedition = GlobalEvent("RyfusExpedition" .. i)
    function RyfusExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31572, 31368, 6), 22, "Expedition: Decrypt Glyphs")
                        Game.broadcastMessage("Ryfus has spawned on Vardenfell island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    RyfusExpedition:time(time)
    RyfusExpedition:register()
end