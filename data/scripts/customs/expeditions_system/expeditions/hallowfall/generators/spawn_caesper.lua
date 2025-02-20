local npc1Position = Position(31270, 31001, 7)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Caesper", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    else
    end
end


local spawnTimes = {
    "00:51:00",
    "03:51:00",
    "06:51:00",
    "09:51:00",
    "12:51:00",
    "15:51:00",
    "18:51:00",
    "21:51:00",
    "22:51:00",
}


for i, time in ipairs(spawnTimes) do
    local CaesperExpedition = GlobalEvent("CaesperExpedition" .. i)
    function CaesperExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31270, 31001, 7), 22, "Expedition: Repair Broken Generators")
                        Game.broadcastMessage("Caesper has spawned on Hallowfall island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    CaesperExpedition:time(time)
    CaesperExpedition:register()
end