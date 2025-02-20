
local rewards = {
    { id = 27458, name = "Sanguine Blade" },
    { id = 27460, name = "Sanguine Cudgel" },
    { id = 27462, name = "Sanguine Hatchet" },
    { id = 27464, name = "Sanguine Razor" },
    { id = 27466, name = "Sanguine Bludgeon" },
    { id = 27468, name = "Sanguine Battleaxe" },
    { id = 27470, name = "Sanguine Legs" },
    { id = 27471, name = "Sanguine Bow" },
    { id = 27473, name = "Sanguine Crossbow" },
    { id = 27475, name = "Sanguine Greaves" },
    { id = 27476, name = "Sanguine Coil" },
    { id = 27478, name = "Sanguine Boots" },
    { id = 27479, name = "Sanguine Rod"},
	{ id = 27481, name = "Sanguine Galoshes"}
}

local bagYouCovet = Action()
function bagYouCovet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)
    playSoundPlayer(player, "open_bag.ogg")
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received a ' .. rewardItem.name .. '.')
	return true
end
bagYouCovet:id(27446)
bagYouCovet:register()