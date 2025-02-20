local config = {
    actionId = 33717, 
    bossName = "Vok The Freakish",
    bossPosition = Position(34200, 31393, 8), 
    bossArea = {
        fromPos = Position(34178, 31390, 8), 
        toPos = Position(34204, 31402, 8), 
        entrancePos = Position(34185, 31397, 8), 
        exitPosition = Position(34187, 31381, 8) 
    },
    participantsAllowAnyCount = true, 
    participantsPos = {
        Position(34187, 31378, 8),
    },
    attempts = {
        level = 100, 
        storage = 194505, 
        seconds = 1800 -- 30 min
    },
    kickParticipantAfterSeconds = 60 * 10, 
}

local function getSpectators()
    if not config.centerPosition then
        config.diffX = math.ceil((config.bossArea.toPos.x - config.bossArea.fromPos.x) / 2)
        config.diffY = math.ceil((config.bossArea.toPos.y - config.bossArea.fromPos.y) / 2)
        config.centerPosition = config.bossArea.fromPos + Position(config.diffX, config.diffY, 0)
    end
    return Game.getSpectators(config.centerPosition, false, false, config.diffX, config.diffX, config.diffY, config.diffY)
end

local vokTheFreakish = MoveEvent()

function vokTheFreakish.onStepIn(player, item, fromPosition, target, toPos, isHotkey)
    local participants = {}
    for index, pos in pairs(config.participantsPos) do
        local tile = Tile(pos)
        if not tile then error("[Warning - Tile not found]") end
        local participant = tile:getTopVisibleCreature(player)
        if participant and participant:isPlayer() then
            if index == 1 and participant ~= player then
                player:sendCancelMessage("Only the first participant can pull the lever.")
                return true
            end

            if participant:getStorageValue(config.attempts.storage) >= os.time() then
                local cooldown = (participant:getStorageValue(config.attempts.storage) - os.time()) / 60
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, (string.format("The player "..participant:getName().." must wait "..math.floor(cooldown).." minutes before being able to enter again.")))
                return true
            elseif participant:getLevel() < config.attempts.level then
                player:sendCancelMessage(string.format("The player %s is not level %d.", participant:getName(), config.attempts.level))
                return true
            end
            participants[#participants +1] = participant    
        end
    end

    local spectators = getSpectators()
    for _, spectator in pairs(spectators) do
        if spectator:isPlayer() then
            player:sendCancelMessage("At this time the room is occupied, please try again later.")
            return true
        end
    end

    for _, spectator in pairs(spectators) do spectator:remove() end
    local boss = Game.createMonster(config.bossName, config.bossPosition)
    if not boss then error(Game.getReturnMessage(RETURNVALUE_NOTENOUGHROOM)) end
    for index, participant in pairs(participants) do
        config.participantsPos[index]:sendMagicEffect(CONST_ME_POFF)
        participant:teleportTo(config.bossArea.entrancePos, false)
        config.bossArea.entrancePos:sendMagicEffect(CONST_ME_TELEPORT)
        participant:setStorageValue(config.attempts.storage, os.time() + config.attempts.seconds)
    end

    config.kickEventId = addEvent(function ()
        for _, spectator in pairs(getSpectators()) do
            if spectator:isPlayer() then
                spectator:getPosition():sendMagicEffect(CONST_ME_POFF)
                spectator:teleportTo(config.bossArea.exitPosition, false)
                config.bossArea.exitPosition:sendMagicEffect(CONST_ME_TELEPORT)
                spectator:sendTextMessage(MESSAGE_INFO_DESCR, "It's been a long time and you haven't managed to defeat the boss.")
            else
                spectator:remove()
            end
        end
    end, config.kickParticipantAfterSeconds * 1000)
    return true
end

vokTheFreakish:aid(config.actionId)
vokTheFreakish:type("stepin")
vokTheFreakish:register()


local exit = MoveEvent()
function exit.onStepIn(player, item, fromPos, target, toPos, isHotkey)
    if not player then
        return false
    end
 player:teleportTo(Position(34187, 31381, 8))
end

exit:aid(33718)
exit:type("stepin")
exit:register()



local config = {
    actionId = 33719, 
    bossName = "Irgix the Flimsy",
    bossPosition = Position(34088, 31308, 8), 
    bossArea = {
        fromPos = Position(34078, 31294, 8), 
        toPos = Position(34098, 31315, 8), 
        entrancePos = Position(34088, 31301, 8), 
        exitPosition = Position(34113, 31304, 8) 
    },
    participantsAllowAnyCount = true, 
    participantsPos = {
        Position(34112, 31301, 8),
    },
    attempts = {
        level = 100, 
        storage = 194506, 
        seconds = 1800 -- 30 min
    },
    kickParticipantAfterSeconds = 60 * 10, 
}

local function getSpectators()
    if not config.centerPosition then
        config.diffX = math.ceil((config.bossArea.toPos.x - config.bossArea.fromPos.x) / 2)
        config.diffY = math.ceil((config.bossArea.toPos.y - config.bossArea.fromPos.y) / 2)
        config.centerPosition = config.bossArea.fromPos + Position(config.diffX, config.diffY, 0)
    end
    return Game.getSpectators(config.centerPosition, false, false, config.diffX, config.diffX, config.diffY, config.diffY)
end

local irgixTheFlimsy = MoveEvent()

function irgixTheFlimsy.onStepIn(player, item, fromPosition, target, toPos, isHotkey)
    local participants = {}
    for index, pos in pairs(config.participantsPos) do
        local tile = Tile(pos)
        if not tile then error("[Warning - Tile not found]") end
        local participant = tile:getTopVisibleCreature(player)
        if participant and participant:isPlayer() then
            if index == 1 and participant ~= player then
                player:sendCancelMessage("Only the first participant can pull the lever.")
                return true
            end

            if participant:getStorageValue(config.attempts.storage) >= os.time() then
                local cooldown = (participant:getStorageValue(config.attempts.storage) - os.time()) / 60
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, (string.format("The player "..participant:getName().." must wait "..math.floor(cooldown).." minutes before being able to enter again.")))
                return true
            elseif participant:getLevel() < config.attempts.level then
                player:sendCancelMessage(string.format("The player %s is not level %d.", participant:getName(), config.attempts.level))
                return true
            end
            participants[#participants +1] = participant    
        end
    end

    local spectators = getSpectators()
    for _, spectator in pairs(spectators) do
        if spectator:isPlayer() then
            player:sendCancelMessage("At this time the room is occupied, please try again later.")
            return true
        end
    end

    for _, spectator in pairs(spectators) do spectator:remove() end
    local boss = Game.createMonster(config.bossName, config.bossPosition)
    if not boss then error(Game.getReturnMessage(RETURNVALUE_NOTENOUGHROOM)) end
    for index, participant in pairs(participants) do
        config.participantsPos[index]:sendMagicEffect(CONST_ME_POFF)
        participant:teleportTo(config.bossArea.entrancePos, false)
        config.bossArea.entrancePos:sendMagicEffect(CONST_ME_TELEPORT)
        participant:setStorageValue(config.attempts.storage, os.time() + config.attempts.seconds)
    end

    config.kickEventId = addEvent(function ()
        for _, spectator in pairs(getSpectators()) do
            if spectator:isPlayer() then
                spectator:getPosition():sendMagicEffect(CONST_ME_POFF)
                spectator:teleportTo(config.bossArea.exitPosition, false)
                config.bossArea.exitPosition:sendMagicEffect(CONST_ME_TELEPORT)
                spectator:sendTextMessage(MESSAGE_INFO_DESCR, "It's been a long time and you haven't managed to defeat the boss.")
            else
                spectator:remove()
            end
        end
    end, config.kickParticipantAfterSeconds * 1000)
    return true
end

irgixTheFlimsy:aid(config.actionId)
irgixTheFlimsy:type("stepin")
irgixTheFlimsy:register()


local exit = MoveEvent()
function exit.onStepIn(player, item, fromPos, target, toPos, isHotkey)
    if not player then
        return false
    end
 player:teleportTo(Position(34113, 31304, 8))
end

exit:aid(33720)
exit:type("stepin")
exit:register()



local config = {
    actionId = 33721, 
    bossName = "Vok The Freakish",
    bossPosition = Position(34130, 31386, 9), 
    bossArea = {
        fromPos = Position(34121, 31375, 9), 
        toPos = Position(34139, 31391, 9), 
        entrancePos = Position(34127, 31380, 9), 
        exitPosition = Position(34131, 31345, 9) 
    },
    participantsAllowAnyCount = true, 
    participantsPos = {
        Position(34131, 31343, 9),
    },
    attempts = {
        level = 100, 
        storage = 194507, 
        seconds = 1800 -- 30 min
    },
    kickParticipantAfterSeconds = 60 * 10, 
}

local function getSpectators()
    if not config.centerPosition then
        config.diffX = math.ceil((config.bossArea.toPos.x - config.bossArea.fromPos.x) / 2)
        config.diffY = math.ceil((config.bossArea.toPos.y - config.bossArea.fromPos.y) / 2)
        config.centerPosition = config.bossArea.fromPos + Position(config.diffX, config.diffY, 0)
    end
    return Game.getSpectators(config.centerPosition, false, false, config.diffX, config.diffX, config.diffY, config.diffY)
end

local vokTheFreakish = MoveEvent()

function vokTheFreakish.onStepIn(player, item, fromPosition, target, toPos, isHotkey)
    local participants = {}
    for index, pos in pairs(config.participantsPos) do
        local tile = Tile(pos)
        if not tile then error("[Warning - Tile not found]") end
        local participant = tile:getTopVisibleCreature(player)
        if participant and participant:isPlayer() then
            if index == 1 and participant ~= player then
                player:sendCancelMessage("Only the first participant can pull the lever.")
                return true
            end

            if participant:getStorageValue(config.attempts.storage) >= os.time() then
                local cooldown = (participant:getStorageValue(config.attempts.storage) - os.time()) / 60
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, (string.format("The player "..participant:getName().." must wait "..math.floor(cooldown).." minutes before being able to enter again.")))
                return true
            elseif participant:getLevel() < config.attempts.level then
                player:sendCancelMessage(string.format("The player %s is not level %d.", participant:getName(), config.attempts.level))
                return true
            end
            participants[#participants +1] = participant    
        end
    end

    local spectators = getSpectators()
    for _, spectator in pairs(spectators) do
        if spectator:isPlayer() then
            player:sendCancelMessage("At this time the room is occupied, please try again later.")
            return true
        end
    end

    for _, spectator in pairs(spectators) do spectator:remove() end
    local boss = Game.createMonster(config.bossName, config.bossPosition)
    if not boss then error(Game.getReturnMessage(RETURNVALUE_NOTENOUGHROOM)) end
    for index, participant in pairs(participants) do
        config.participantsPos[index]:sendMagicEffect(CONST_ME_POFF)
        participant:teleportTo(config.bossArea.entrancePos, false)
        config.bossArea.entrancePos:sendMagicEffect(CONST_ME_TELEPORT)
        participant:setStorageValue(config.attempts.storage, os.time() + config.attempts.seconds)
    end

    config.kickEventId = addEvent(function ()
        for _, spectator in pairs(getSpectators()) do
            if spectator:isPlayer() then
                spectator:getPosition():sendMagicEffect(CONST_ME_POFF)
                spectator:teleportTo(config.bossArea.exitPosition, false)
                config.bossArea.exitPosition:sendMagicEffect(CONST_ME_TELEPORT)
                spectator:sendTextMessage(MESSAGE_INFO_DESCR, "It's been a long time and you haven't managed to defeat the boss.")
            else
                spectator:remove()
            end
        end
    end, config.kickParticipantAfterSeconds * 1000)
    return true
end

vokTheFreakish:aid(config.actionId)
vokTheFreakish:type("stepin")
vokTheFreakish:register()


local exit = MoveEvent()
function exit.onStepIn(player, item, fromPos, target, toPos, isHotkey)
    if not player then
        return false
    end
 player:teleportTo(Position(34131, 31345, 9))
end

exit:aid(33722)
exit:type("stepin")
exit:register()