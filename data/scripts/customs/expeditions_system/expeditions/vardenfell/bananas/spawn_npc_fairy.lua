local npc1Position = Position(31560, 31427, 7)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Fairy", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "01:24:00",
    "03:24:00",
    "05:24:00",
    "07:24:00",
    "09:24:00",
    "12:24:00",
    "15:24:00",
    "16:24:00",
    "19:24:00",
    "21:24:00",
    "23:24:00",
}


for i, time in ipairs(spawnTimes) do
    local FairyExpedition = GlobalEvent("FairyExpedition" .. i)
    function FairyExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31560, 31427, 7), 22, "Expedition: Collect Bananas")
                        Game.broadcastMessage("Fairy has spawned on Vardenfell island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    FairyExpedition:time(time)
    FairyExpedition:register()
end