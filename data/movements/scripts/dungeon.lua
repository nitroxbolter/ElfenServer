

function onStepIn(player, item, fromPosition, itemEx, toPosition, isHotkey)
	
	player:registerEvent("DungeonSystem_Modal")
	
	local window = ModalWindow(DUNGEON_SYSTEM.Modal.ID, DUNGEON_SYSTEM.Modal.Title, DUNGEON_SYSTEM.Modal.Msg)
	
	window:addButton(200, "Confirm")
	window:addButton(201, "Details")
	window:addButton(202, "Exit")
	
	for k,v in pairs(DUNGEON_SYSTEM.Dungeons) do
		window:addChoice(k, v.Name)
	end
	
	window:setDefaultEnterButton(200)
    window:setDefaultEscapeButton(202)
	
	window:sendToPlayer(player)
	
	return true
end
