
local elevatorBounacAction = MoveEvent()
function elevatorBounacAction.onStepIn(creature, item, position, fromPosition)
	if creature:isPlayer() then
		creature:teleportTo(Position(33540, 31471, 3))
		Position(33540, 31471, 3):sendMagicEffect(CONST_ME_POFF)
	end
	return true
end
elevatorBounacAction:aid(59604)
elevatorBounacAction:register()

local elevatorBounacMoveEvent = MoveEvent()
function elevatorBounacMoveEvent.onStepIn(creature, item, position, fromPosition)
	if creature:isPlayer() then
		creature:teleportTo(Position(33537, 31471, 7))
		Position(33537, 31471, 7):sendMagicEffect(CONST_ME_POFF)
	end
	return true
end
elevatorBounacMoveEvent:aid(59605)
elevatorBounacMoveEvent:register()