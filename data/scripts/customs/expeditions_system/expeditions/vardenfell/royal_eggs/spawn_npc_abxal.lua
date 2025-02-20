local npc1Position = Position(31574, 31348, 6)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Abxal", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "00:39:00",
    "02:49:00",
    "04:19:00",
    "06:29:00",
    "08:39:00",
    "11:49:00",
    "13:19:00",
    "16:29:00",
    "18:39:00",
    "20:49:00",
    "22:19:00",
}


for i, time in ipairs(spawnTimes) do
    local AbxalExpedition = GlobalEvent("AbxalExpedition" .. i)
    function AbxalExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31574, 31348, 6), 22, "Expedition: Find Royal Vulture Eggs")
                        Game.broadcastMessage("Abxal has spawned on Vardenfell island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    AbxalExpedition:time(time)
    AbxalExpedition:register()
end