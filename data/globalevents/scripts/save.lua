local shutdownAtServerSave = false
local cleanMapAtServerSave = false

local function serverSave()
    if shutdownAtServerSave then
        Game.setGameState(GAME_STATE_SHUTDOWN)
    end
   
    if cleanMapAtServerSave then
        cleanMap()
    end
   
    saveServer()
    Game.setGameState(GAME_STATE_NORMAL)
end

local function secondServerSaveWarning()
    broadcastMessage("Server is saving game in one minute, you can continue playing.", MESSAGE_STATUS_WARNING)
    addEvent(serverSave, 60000)
end

local function firstServerSaveWarning()
    broadcastMessage("Server is saving game in 3 minutes, you can continue playing.", MESSAGE_STATUS_WARNING)
    addEvent(secondServerSaveWarning, 120000)
end

function onThink(interval)
    broadcastMessage("Server is saving game in 5 minutes, you can continue playing.", MESSAGE_STATUS_WARNING)
    addEvent(firstServerSaveWarning, 120000)
    return not shutdownAtServerSave
end