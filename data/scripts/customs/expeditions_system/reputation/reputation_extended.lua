local ExtendedEvent = CreatureEvent("ReputationSystemExtended")

function ExtendedEvent.onExtendedOpcode(player, opcode, buffer)
  if opcode == ExtendedOPCodes.REPUTATION_SYSTEM then
    sendReputationToPlayer(player)
  end
end

ExtendedEvent:type("extendedopcode")
ExtendedEvent:register()