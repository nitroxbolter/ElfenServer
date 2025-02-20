local npc1Position = Position(30893, 30981, 7)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Aurostor", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "05:19:30",
    "07:19:30",
    "09:19:30",
    "11:19:30",
    "13:19:30",
    "15:19:30",
    "17:19:30",
    "19:19:30",
    "22:19:30",
    "00:19:30",
    "02:19:30",
    "04:19:30"
}


for i, time in ipairs(spawnTimes) do
    local AurostorExpedition = GlobalEvent("AurostorExpedition" .. i)
    function AurostorExpedition.onTime(interval)
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
                        creature:addMapMark(Position(30893, 30981, 7), 22, "Expedition: Dorn Book Page")
                        Game.broadcastMessage("Aurostor has spawned on Dorn island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    AurostorExpedition:time(time)
    AurostorExpedition:register()
end