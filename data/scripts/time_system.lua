-- time_system.lua

local timeSystem = {}

function timeSystem.getTime()
    -- Obter a data e hora no formato "HH:MM - DD/MM/YYYY"
    return os.date("%H:%M - %d/%m/%Y")
end

-- Função para enviar a hora para todos os jogadores
function timeSystem.sendTimeToAllPlayers()
    local time = timeSystem.getTime()
    for _, player in pairs(Game.getPlayers()) do
        player:sendTextMessage(MESSAGE_INFO_DESCR, "🕒 Hora do servidor: " .. time)
    end
end

return timeSystem
