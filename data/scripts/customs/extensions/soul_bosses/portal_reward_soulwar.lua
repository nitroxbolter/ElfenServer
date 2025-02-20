local portalReward = MoveEvent()
function portalReward.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	if player:getStorageValue(720034) < 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Only warriors who defeated Goshnar's Megalomania can access this area.")
		player:teleportTo(fromPosition, true)
		return false
	end
		player:teleportTo(Position(34172, 31273, 10))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
end

portalReward:type("stepin")
portalReward:aid(33731)
portalReward:register()


local portalExitReward = MoveEvent()
function portalExitReward.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	if player:getStorageValue(720034) >= 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Collect Your reward before leave the room.")
		player:teleportTo(fromPosition, true)
		return false
	end
		player:teleportTo(Position(34172, 31278, 10))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:setStorageValue(720029, 0)
		player:setStorageValue(720030, 0)
		player:setStorageValue(720031, 0)
		player:setStorageValue(720032, 0)
		player:setStorageValue(720033, 0)
		player:setStorageValue(720035, 0)
		return true
end

portalExitReward:type("stepin")
portalExitReward:aid(33732)
portalExitReward:register()
