local falconBastion = Action()

function falconBastion.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item:getActionId() == 21607 then
	player:teleportTo(Position(33354, 31372, 7))
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	if item:getActionId() == 21608 then
		player:teleportTo(Position(33325, 31351, 7))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	if item:getActionId() == 21609 then
		player:teleportTo(Position(33391, 31317, 7))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	if item:getActionId() == 21610 then
		player:teleportTo(Position(33383, 31335, 7))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
end

falconBastion:aid(21607, 21608, 21609, 21610)
falconBastion:register()
