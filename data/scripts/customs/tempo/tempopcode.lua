dofile('data/lib/core/json.lua')
print("Sistema de tempo carregado")

local CODE_JSON_TEST = 150 

local ExtendedEvent = CreatureEvent("JsonTestExtended")

function ExtendedEvent.onExtendedOpcode(player, opcode, buffer)
  if opcode == CODE_JSON_TEST then
    local status, json_data = pcall(function()
      return json.decode(buffer)
    end)

    if not status then
      print("Falha ao decodificar JSON do cliente")
      return false
    end
    

    local responseData = {
      status = "ok",
      message = "Dados recebidos com sucesso"
    }
    
    player:sendExtendedOpcode(CODE_JSON_TEST, json.encode(responseData))
  end
  return true
end
ExtendedEvent:type("extendedopcode")
ExtendedEvent:register()

local LoginEvent = CreatureEvent("JsonTestLogin")

function LoginEvent.onLogin(player)
  player:registerEvent("JsonTestExtended")
  return true
end
LoginEvent:type("login")
LoginEvent:register()

-- Função para converter o tempo do Tibia (TFS) para HH:MM
function getTibiaServerTime()
  local minutes = getWorldTime() -- Obtém o tempo do mundo em minutos desde 00:00
  local hours = math.floor(minutes / 60) -- Converte minutos para horas
  local mins = minutes % 60 -- Obtém os minutos restantes

  return string.format("%02d:%02d", hours, mins) -- Formata para "HH:MM"
end

-- Função para enviar o horário do Tibia para todos os jogadores a cada minuto
function sendTibiaTimeToClients()
  local tibiaTime = getTibiaServerTime() -- Obtém o horário correto do Tibia
  local timeData = {
    status = "time_update",
    message = tibiaTime
  }

  for _, player in pairs(Game.getPlayers()) do
    player:sendExtendedOpcode(CODE_JSON_TEST, json.encode(timeData))
  end

  addEvent(sendTibiaTimeToClients, 60 * 1000) -- Chama novamente após 60 segundos
end

-- Inicia o envio do horário ao carregar o script
sendTibiaTimeToClients()
