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
    npcs[npcId] = Game.createNpc("Hyrukon", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "03:20:00",
    "05:20:00",
    "09:20:00",
    "11:20:00",
    "15:20:00",
    "17:20:00",
    "19:20:00",
    "21:20:00",
    "00:20:00",
    "01:50:00",
}


for i, time in ipairs(spawnTimes) do
    local hyrukonExpedition = GlobalEvent("HyrukonExpedition" .. i)
    function hyrukonExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31272, 31263, 6), 22, "Expedition: Collect Wine for Pirate Fest.")
                        creature:addMapMark(Position(31272, 31263, 7), 22, "Expedition: Collect Wine for Pirate Fest.")
                        Game.broadcastMessage("Hyrukon has appeared on Vyrsk Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    hyrukonExpedition:time(time)
    hyrukonExpedition:register()
end