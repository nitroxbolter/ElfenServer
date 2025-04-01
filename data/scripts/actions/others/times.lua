-- Função para obter a data e hora do servidor
function onSay(player, words, param)
    local time = os.date("%H:%M - %d/%m/%Y")  -- Formato: 14:30 - 31/03/2025
    player:sendTextMessage(MESSAGE_INFO_DESCR, "🕒 Hora do servidor: " .. time)
    return true
end
