local npc1Position = Position(31199, 31206, 7)
local npcDuration = 1 * 60 * 60 * 1000
local npcs = {}

local function removeNpcAfterDuration(npcId)
    if npcs[npcId] then
        npcs[npcId]:remove()
        npcs[npcId] = nil
    end
end

local function spawnNpc(npcId, position)
    npcs[npcId] = Game.createNpc("Coassit", position)
    if npcs[npcId] then
        addEvent(removeNpcAfterDuration, npcDuration, npcId)
    end
end


local spawnTimes = {
    "09:30:00",
    "11:30:00",
    "13:30:00",
    "15:30:00",
    "18:30:00",
    "21:30:00"
}


for i, time in ipairs(spawnTimes) do
    local coassitExpedition = GlobalEvent("CoassitExpedition" .. i)
    function coassitExpedition.onTime(interval)
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
                        creature:addMapMark(Position(31199, 31206, 7), 22, "Expedition: Hermit Crabs")
                        Game.broadcastMessage("Coassit has spawned at north of Vyrsk Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
        return true
    end
    coassitExpedition:time(time)
    coassitExpedition:register()
end