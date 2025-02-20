local npc1Position = Position(31329, 31046, 7)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Rinling", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "05:14:00",
    "08:14:00",
    "10:14:00",
    "12:14:00",
    "14:14:00",
    "16:14:00",
    "18:14:00",
    "20:14:00",
    "22:14:00",
    "01:14:00",
    "03:14:00",
}


for i, time in ipairs(spawnTimes) do
    local RinlingExpedition = GlobalEvent("RinlingExpedition" .. i)
    function RinlingExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31329, 31046, 7), 22, "Expedition: Repair Small Machines")
                        Game.broadcastMessage("Rinling has spawned on Hallowfall island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    RinlingExpedition:time(time)
    RinlingExpedition:register()
end