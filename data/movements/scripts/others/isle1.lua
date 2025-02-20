local portals = {
	[64001] = {210001}, 
	[64002] = {210002}, 
	[64003] = {210016}                    
}

local pos = Position(33497, 32616, 8)

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local storage = portals[item.uid]
	if not storage then
		return true
	end

	player:teleportTo(pos)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:setStorageValue(storage[1], 1)
	return true
end
