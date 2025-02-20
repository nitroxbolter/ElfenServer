function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if item.actionid == 50014 then
		position:sendMagicEffect(CONST_ME_MAGIC_GREEN)
	else
		player:teleportTo(Position(32185, 31939, 14))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end
