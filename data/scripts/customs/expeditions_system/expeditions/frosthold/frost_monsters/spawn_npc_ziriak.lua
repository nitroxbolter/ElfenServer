local npcPosition = Position(30890, 31209, 7)

local areaFromPos = {30873, 31288, 5}
local areaToPos = {30937, 31324, 7}

local eventDuration = 60 * 60 * 1000

local npcs = {}


local function removeMonstersAndNPC(npcId, fromPos, toPos)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end


local spawnTimes = {
    "06:30:00",
    "09:15:00",
    "11:15:00",
    "13:15:00",
    "15:15:00",
    "17:15:00",
    "19:15:00",
    "21:15:00",
    "23:15:00",
    "01:15:00",
    "03:15:00",
    "05:15:00"
}

for i, time in ipairs(spawnTimes) do
    local ziriakExpedition = GlobalEvent("ZiriakExpedition" .. i)
    function ziriakExpedition.onTime(interval)
        npcs[1] = Game.createNpc("Ziriak", npcPosition)
        
        addEvent(removeMonstersAndNPC, eventDuration, 1, areaFromPos, areaToPos)
    
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
                        creature:addMapMark(Position(30890, 31209, 7), 22, "Expedition: Frosted Monsters")
                    end
                end
            end
        end
        Game.broadcastMessage("Ziriak Has Spawned at East of Frosthold.", MESSAGE_EVENT_ADVANCE)
        return true
    end
    ziriakExpedition:time(time)
    ziriakExpedition:register()
end