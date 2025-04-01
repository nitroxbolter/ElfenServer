function onThink(interval)
    local worldTime = getWorldTime()
    local hours = math.floor(worldTime / 60)
    local minutes = worldTime % 60
    local formattedTime = string.format("🕒 Hora do Mundo: %02d:%02d", hours, minutes)

    -- Envia a mensagem para todos os jogadores online
    broadcastMessage(formattedTime, MESSAGE_STATUS_WARNING)

    return true
end
