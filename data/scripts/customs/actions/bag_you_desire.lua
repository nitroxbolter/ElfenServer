local rewards = {
    { id = 27377, name = "Soulcutter" },
    { id = 27378, name = "Soulshredder" },
    { id = 27379, name = "Soulbiter" },
    { id = 27380, name = "Souleater" },
    { id = 27381, name = "Soulcrusher" },
    { id = 27382, name = "Soulmaimer" },
    { id = 27383, name = "Soulbleeder" },
    { id = 27384, name = "Soulpiercer" },
    { id = 27385, name = "Soultainter" },
    { id = 27386, name = "Soulhexer" },
    { id = 27387, name = "Soulshanks" },
    { id = 27388, name = "Soulstrider" },
    { id = 27389, name = "Soulshell" },
    { id = 27390, name = "Soulmantle" },
    { id = 27391, name = "Soulshroud" },
    { id = 27392, name = "Pair of Soulwalkers" },
    { id = 27393, name = "Pair of Soulstalkers" },
    { id = 27394, name = "Soulbastion" }
}

local bagyouDesire = Action()

function bagyouDesire.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)
    playSoundPlayer(player, "open_bag.ogg")
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received a ' .. rewardItem.name .. '.')
	return true
end

bagyouDesire:id(27353)
bagyouDesire:register()
