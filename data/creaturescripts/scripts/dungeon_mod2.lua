function modalDungeon(player)

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
	
end

function onModalWindow(player, modalWindowId, buttonId, choiceId)  
    
	player:unregisterEvent("DungeonSystemType_Modal")

	local dg = DUNGEON_SYSTEM.Dungeons
	local msg = DUNGEON_SYSTEM.Messages
	local modal = DUNGEON_SYSTEM.Modal
	local sto = DUNGEON_SYSTEM.Storages	
	
	if buttonId == 100 then
		
		modalDungeon(player)
		
	end
	
end