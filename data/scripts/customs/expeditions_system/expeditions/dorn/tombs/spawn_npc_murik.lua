local npc1Position = Position(30878, 30970, 7)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Murik", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "06:25:00",
    "08:25:00",
    "10:25:00",
    "12:25:00",
    "14:25:00",
    "16:25:00",
    "18:25:00",
    "20:25:00",
    "22:25:00",
    "01:25:00",
    "03:25:00",
    "05:25:00"
}


for i, time in ipairs(spawnTimes) do
    local MuricExpedition = GlobalEvent("MuricExpedition" .. i)
    function MuricExpedition.onTime(interval)
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
                        creature:addMapMark(Position(30878, 30970, 7), 22, "Expedition: Tombs")
                        Game.broadcastMessage("Muric has spawned on Dorn island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    MuricExpedition:time(time)
    MuricExpedition:register()
end