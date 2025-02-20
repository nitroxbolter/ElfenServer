local soulpitEntrance = MoveEvent()

function soulpitEntrance.onStepIn(player, item, position, fromPosition)
	if player:isPlayer() then
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		local newPosition = Position(31589, 32281, 8)
		player:teleportTo(newPosition)
		newPosition:sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

soulpitEntrance:type("stepin")
soulpitEntrance:aid(5896)
soulpitEntrance:register()

