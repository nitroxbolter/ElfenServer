function onModalWindow(player, modalWindowId, buttonId, choiceId)  
    
	player:unregisterEvent("DungeonSystem_Modal")

	local dg = DUNGEON_SYSTEM.Dungeons
	local msg = DUNGEON_SYSTEM.Messages
	local modal = DUNGEON_SYSTEM.Modal
	local sto = DUNGEON_SYSTEM.Storages	

    if (modalWindowId == DUNGEON_SYSTEM.Modal.ID) then
		
		if buttonId == 200 then
			
			local players = {}
			for x = dg[choiceId].FromPos.x, dg[choiceId].ToPos.x do
				for y = dg[choiceId].FromPos.y, dg[choiceId].ToPos.y do
					for z = dg[choiceId].FromPos.z, dg[choiceId].ToPos.z do
						local tile = Tile(x, y, z)
						local creature = tile:getTopCreature()
						if creature and creature:isPlayer() then
							players[#players+1] = creature
						end
					end
				end
			end
			
			if #players > 0 then
				player:getPosition():sendMagicEffect(CONST_ME_POFF)
				return player:sendTextMessage(MESSAGE_STATUS_SMALL, msg.PlayerInside)
			end
			
			if (dg[choiceId].NeedLevel) then
				if (player:getLevel() < dg[choiceId].Level) then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format(msg.MsgNeedLevel, dg[choiceId].Level))
					return false
				end
			end
			
			local pt = player:getParty()
			local partyMembers
			
			local party = {}
			party = partyMembers
			
			local fromPosPlayer = player:getPosition()
			
			if (dg[choiceId].NeedParty) then
				
				if not pt then
					
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msg.MsgUniqueNeedParty)
					return false
				
				else
					
					partyMembers = pt:getMembers()
					local party = player:getParty():getMemberCount()
					
					if not (pt:getLeader():getName() == player:getName()) then
						
						player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msg.MsgLeaderParty)
						return false
					
					else
					
						local partyMaisUm = party+1
						
						if not (partyMaisUm == dg[choiceId].AmountParty) then
							player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format(msg.MsgNeedParty, dg[choiceId].AmountParty))
							return false
						end
						
						local names = {}
						local posOfPlayer = {}
						
						for i = 1, party do
						
							local ppt = partyMembers[i]
							local fromPosPpt = ppt:getPosition()
						
							if DUNGEON_SYSTEM.PzToEntry then
								if not getTileInfo(fromPosPpt).protection then
									player:getPosition():sendMagicEffect(CONST_ME_POFF)
									return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msg.NeedPzMsg)
								elseif not getTileInfo(fromPosPlayer).protection then
									player:getPosition():sendMagicEffect(CONST_ME_POFF)
									return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msg.NeedPzSoloMsg)
								end
							end
						
							-- SE TEM COOLDOWN
							if player:getStorageValue(sto.TimerCooldown) - os.time() > 0 or ppt:getStorageValue(sto.TimerCooldown) - os.time() > 0 then
								if player:getStorageValue(sto.TimerCooldown) - os.time() > 0 then
									player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format(msg.ToCooldown, string.format(player:getStorageValue(sto.TimerCooldown)-os.time())))
									player:getPosition():sendMagicEffect(CONST_ME_POFF)
									ppt:getPosition():sendMagicEffect(CONST_ME_POFF)
								else
									player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format(msg.WaitFriendsCooldown, string.format(ppt:getStorageValue(sto.TimerCooldown)-os.time())))
									player:getPosition():sendMagicEffect(CONST_ME_POFF)
									ppt:getPosition():sendMagicEffect(CONST_ME_POFF)
								end
								return false
							end
							
							names[i] = ppt:getName()
							
						end
						
						local positionPlayer = player:getPosition()
						local distance = DUNGEON_SYSTEM.SQMsDistanceOfLeader
						
						for x = positionPlayer.x - distance, positionPlayer.x + distance do
							for y = positionPlayer.y - distance, positionPlayer.y + distance do
								for z = positionPlayer.z, positionPlayer.z do
									local tileP = Tile(x, y, z)
									local creatureP = tileP:getTopCreature()
									if creatureP and creatureP:isPlayer() then
										for xx = 1, #names do
											if creatureP:getName() == names[xx] then
												posOfPlayer[#posOfPlayer+1] = creatureP
											end
										end
									end
								end
							end
						end
						
						if #posOfPlayer+1 ~= dg[choiceId].AmountParty then
							return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msg.MsgDistanceLeader)
						end
						
						if dg[choiceId].SpawnMonsters then
							for m, l in pairs(dg[choiceId].Monsters) do
								Game.createMonster(m, l)
							end
						end
						
						player:teleportTo(dg[choiceId].DungeonPos)
						player:getPosition():sendMagicEffect(40)
						player:say(msg.ToEntry, TALKTYPE_MONSTER_SAY)
						
						addEvent(function()
							player:teleportTo(fromPosPlayer)
							player:setStorageValue(sto.TimerCooldown, os.time() + DUNGEON_SYSTEM.CooldownTime)
							player:getPosition():sendMagicEffect(40)
							player:popupFYI(msg.ToFail)
							
							-- Remove All monsters
							local monsterPos = {}
							for x = dg[choiceId].FromPos.x, dg[choiceId].ToPos.x do
								for y = dg[choiceId].FromPos.y, dg[choiceId].ToPos.y do
									for z = dg[choiceId].FromPos.z, dg[choiceId].ToPos.z do
										local tile = Tile(x, y, z)
										local monster = tile:getTopCreature()
										if monster and monster:isMonster() then
											monster:remove()
										end
									end
								end
							end
							
						end, dg[choiceId].DungeonTime*1000)	
						
						for mx = 1, party do
						
							local ppt = partyMembers[mx]
							local fromPosPpt = ppt:getPosition()
						
							ppt:teleportTo(dg[choiceId].DungeonPos)
							ppt:getPosition():sendMagicEffect(40)
							
							addEvent(function()
								ppt:teleportTo(fromPosPpt)
								ppt:setStorageValue(sto.TimerCooldown, os.time() + DUNGEON_SYSTEM.CooldownTime)
								ppt:getPosition():sendMagicEffect(40)
								ppt:popupFYI(msg.ToFail)
							end, dg[choiceId].DungeonTime*1000)	
						
						end
						
					end
					
				end
				
			else
				
				if DUNGEON_SYSTEM.PzToEntry then
					if not getTileInfo(fromPosPlayer).protection then
						player:getPosition():sendMagicEffect(CONST_ME_POFF)
						return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msg.NeedPzSoloMsg)
					end
				end
				
				if player:getStorageValue(sto.TimerCooldown) - os.time() > 0 then
					player:getPosition():sendMagicEffect(CONST_ME_POFF)
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format(msg.ToCooldown, string.format(player:getStorageValue(sto.TimerCooldown)-os.time())))
					return false
				end
				
				if dg[choiceId].SpawnMonsters then
					for m, l in pairs(dg[choiceId].Monsters) do
						Game.createMonster(m, l)
					end
				end
					
				-- To Dungeon
				player:teleportTo(dg[choiceId].DungeonPos)
				player:getPosition():sendMagicEffect(40)
				player:say(msg.ToEntry, TALKTYPE_MONSTER_SAY)
				player:setStorageValue(sto.TimerDungeon, os.time() + dg[choiceId].DungeonTime)
				
				-- Back Dungeon
				addEvent(function()
					player:teleportTo(fromPosPlayer)
					player:setStorageValue(sto.TimerCooldown, os.time() + DUNGEON_SYSTEM.CooldownTime)
					player:getPosition():sendMagicEffect(40)
					player:popupFYI(msg.ToFail)
					
					-- Remove All monsters
					local monsterPos = {}
					for x = dg[choiceId].FromPos.x, dg[choiceId].ToPos.x do
						for y = dg[choiceId].FromPos.y, dg[choiceId].ToPos.y do
							for z = dg[choiceId].FromPos.z, dg[choiceId].ToPos.z do
								local tile = Tile(x, y, z)
								local monster = tile:getTopCreature()
								if monster and monster:isMonster() then
									monster:remove()
								end
							end
						end
					end
					
				end, dg[choiceId].DungeonTime*1000)
				
			end
			
			
		elseif buttonId == 201 then
			
			player:registerEvent("DungeonSystemDetails_Modal")
			
			local needPartyMsg, needLevelMsg = "", ""
			
			if (dg[choiceId].NeedParty) then
				needPartyMsg = string.format("Party: %s players", dg[choiceId].AmountParty)
			else
				needPartyMsg = "Party: 1 players"
			end
			
			if (dg[choiceId].NeedLevel) then
				needLevelMsg = string.format("Level: %s+", dg[choiceId].Level)
			else
				needLevelMsg = "Don't need Level"
			end
			
			local currentTime = os.time()
			local endTime = dg[choiceId].DungeonTime + currentTime  -- Calculate the end time

			-- Check if the dungeon time has already passed
			if endTime < currentTime then
    			endTime = currentTime  -- Set it to the current time to avoid negative values
			end

			local timeDiff = endTime - currentTime

			-- Calculate hours, minutes, and seconds as before
			local hours = math.floor(timeDiff / 3600)
			local minutes = math.floor((timeDiff % 3600) / 60)
			local seconds = timeDiff % 60

			-- Format the time difference as a string
			local timeDiffStr = string.format("%02d:%02d:%02d", hours, minutes, seconds)


			local detailsModal = ModalWindow(modal.IDDetails, modal.TitleDetails, string.format(" Dungeon %s \n\n%s\n%s\nTime to make Dungeon: %s", dg[choiceId].Name, needPartyMsg, needLevelMsg, timeDiffStr))

			
			detailsModal:addButton(100, "Back")
			
			detailsModal:setDefaultEnterButton(100)
			detailsModal:setDefaultEscapeButton(100)
			
			detailsModal:sendToPlayer(player)
			
			-- player:popupFYI(string.format(">> Dungeon %s <<\n\n" .. needPartyMsg .. "\n" .. needLevelMsg .."\n\nTime to Dungeon: %s", dg[choiceId].Name, string.format(dg[choiceId].DungeonTime)))

		end
    
	end
	
end