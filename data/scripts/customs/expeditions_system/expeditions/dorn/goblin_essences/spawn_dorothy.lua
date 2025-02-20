local npc1Position = Position(31008, 30994, 7)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Dorothy", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "03:50:30",
    "06:22:30",
    "08:22:30",
    "10:22:30",
    "12:22:30",
    "14:22:30",
    "16:22:30",
    "18:22:30",
    "20:22:30",
    "22:22:30",
    "00:40:30",
    "02:22:30"
}


for i, time in ipairs(spawnTimes) do
    local DorothyExpedition = GlobalEvent("DorothyExpedition" .. i)
    function DorothyExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31008, 30994, 7), 22, "Expedition: Goblin Essences")
                        Game.broadcastMessage("Dorothy has spawned on Dorn island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    DorothyExpedition:time(time)
    DorothyExpedition:register()
end