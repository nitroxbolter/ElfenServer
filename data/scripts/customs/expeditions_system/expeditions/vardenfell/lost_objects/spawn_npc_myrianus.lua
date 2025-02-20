local npc1Position = Position(31597, 31395, 7)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Myrianus", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "06:17:00",
    "09:17:00",
    "11:17:00",
    "13:17:00",
    "15:17:00",
    "17:17:00",
    "19:17:00",
    "21:17:00",
    "23:17:00",
    "02:17:00",
    "04:17:00",
}


for i, time in ipairs(spawnTimes) do
    local MyrianusExpedition = GlobalEvent("MyrianusExpedition" .. i)
    function MyrianusExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31597, 31395, 7), 22, "Expedition: Find Lost Objects")
                        Game.broadcastMessage("Myrianus has spawned on Vardenfell island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    MyrianusExpedition:time(time)
    MyrianusExpedition:register()
end