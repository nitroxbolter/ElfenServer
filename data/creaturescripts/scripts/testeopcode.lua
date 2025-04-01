dofile('data/lib/core/json.lua')

local CODE_JSON_TEST = 150 

local ExtendedEvent = CreatureEvent("JsonTestExtended")
function ExtendedEvent.onExtendedOpcode(player, opcode, buffer)
  if opcode == CODE_JSON_TEST then
    local status, json_data =
      pcall(
      function()
        return json.decode(buffer)
      end
    )

    if not status then
      print("Failed to decode JSON from client")
      return false
    end

    print("Received data from client:")
    print("A:", json_data.a)
    print("B:", json_data.b)
    print("C.X:", json_data.c.x)
    print("C.Y:", json_data.c.y)
    
    local responseData = {
      status = "ok",
      message = "Data received successfully"
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