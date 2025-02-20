local function setStoredOutfit(player, storedLookType, storedLookAddons, storedLookWings, storedLookAura, storedLookShader)
    local playerOutfit = player:getOutfit()
    
    if storedLookType > 0 then
        playerOutfit.lookType = storedLookType
    end
    if storedLookAddons > 0 then
        playerOutfit.lookAddons = storedLookAddons
    end
    if storedLookWings > 0 then
        playerOutfit.lookWings = storedLookWings
    end
    if storedLookAura > 0 then
        playerOutfit.lookAura = storedLookAura
    end
    if storedLookShader > 0 then
        playerOutfit.lookShader = storedLookShader
    end
    
    player:setOutfit(playerOutfit)
end

local events = {
	'TutorialCockroach',
	'ElementalSpheresOverlords',
	'BigfootBurdenVersperoth',
	'BigfootBurdenWarzone',
	'BigfootBurdenWeeper',
	'BigfootBurdenWiggler',
	'SvargrondArenaKill',
	'NewFrontierShardOfCorruption',
	'NewFrontierTirecz',
	'ServiceOfYalaharDiseasedTrio',
	'ServiceOfYalaharAzerus',
	'ServiceOfYalaharQuaraLeaders',
	'InquisitionBosses',
	'InquisitionUngreez',
	'KillingInTheNameOfKills',
	'MastersVoiceServants',
	'SecretServiceBlackKnight',
	'ThievesGuildNomad',
	'WotELizardMagistratus',
	'WotELizardNoble',
	'WotEKeeper',
	'WotEBosses',
	'WotEZalamon',
	'PlayerDeath',
	'AdvanceSave',
	'AdvanceRookgaard',
	'PythiusTheRotten',
	'DropLoot'
}


local function onMovementRemoveProtection(cid, oldPosition, time)
	local player = Player(cid)
	if not player then
		return true
	end

	local playerPosition = player:getPosition()
	if (playerPosition.x ~= oldPosition.x or playerPosition.y ~= oldPosition.y or playerPosition.z ~= oldPosition.z) or player:getTarget() or time <= 0 then
		player:setStorageValue(Storage.combatProtectionStorage, 0)
		return true
	end

	addEvent(onMovementRemoveProtection, 1000, cid, oldPosition, time - 1)
end

function onLogin(player)
	local playerId = player:getGuid()
	local serverName = configManager.getString(configKeys.SERVER_NAME)
	local loginStr = "Welcome to " .. serverName .. "!"
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. " Please choose your outfit."
		player:sendOutfitWindow()
		local startStorageKey = 110000
		local endStorageKey = 110200
		local resetStorage = false

		for storageKey = startStorageKey, endStorageKey do
    		if player:getStorageValue(storageKey) == -1 then
        		resetStorage = true
        		break
    		end
		end
		if resetStorage then
    		for storageKey = startStorageKey, endStorageKey do
        		player:setStorageValue(storageKey, 0)
    		end
		end
		local reputationStorageStart = 343585
		local reputationStorageEnd = 343590
		for storageReputation = reputationStorageStart, reputationStorageEnd do
    		if player:getStorageValue(storageReputation) == -1 then
        		player:setStorageValue(storageReputation, 0)
    		end
		end
		local coinsReputationStart = 48076
		local coinsReputationEnd = 48080
		for storageCoinReputation = coinsReputationStart, coinsReputationEnd do
    		if player:getStorageValue(storageCoinReputation) == -1 then
        		player:setStorageValue(storageCoinReputation, 0)
    		end
		end
		sendReputationToPlayer(player)
		local expeditionMountsStart = 222441
		local expeditionMountsEnd = 222445
		for storageExpeditionMounts = expeditionMountsStart, expeditionMountsEnd do
    		if player:getStorageValue(storageExpeditionMounts) == -1 then
        		player:setStorageValue(storageExpeditionMounts, 0)
    		end
		end
		local rarityStorage = 977544
		local rarityStorageEnd = 977561
		for rarityStorageCombats = rarityStorage, rarityStorageEnd do
    		if player:getStorageValue(rarityStorageCombats) == -1 then
        		player:setStorageValue(rarityStorageCombats, 0)
    		end
		end

	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end
		loginStr = string.format("Your last visit in %s: %s.", serverName, os.date("%d %b %Y %X", player:getLastLoginSaved()))
	end
	sendReputationToPlayer(player)
	local reputationStorageStart = 343585
	local reputationStorageEnd = 343590
	for storageReputation = reputationStorageStart, reputationStorageEnd do
    	if player:getStorageValue(storageReputation) == -1 then
       		player:setStorageValue(storageReputation, 0)
    	end
	end
	local coinsReputationStart = 48076
	local coinsReputationEnd = 48080
	for storageCoinReputation = coinsReputationStart, coinsReputationEnd do
    	if player:getStorageValue(storageCoinReputation) == -1 then
       		player:setStorageValue(storageCoinReputation, 0)
    	end
	end
	local expeditionMountsStart = 222441
	local expeditionMountsEnd = 222445
	for storageExpeditionMounts = expeditionMountsStart, expeditionMountsEnd do
    	if player:getStorageValue(storageExpeditionMounts) == -1 then
        	player:setStorageValue(storageExpeditionMounts, 0)
    	end
	end
	local rarityStorage = 977544
	local rarityStorageEnd = 977561
	for rarityStorageCombats = rarityStorage, rarityStorageEnd do
    	if player:getStorageValue(rarityStorageCombats) == -1 then
        	player:setStorageValue(rarityStorageCombats, 0)
    	end
	end

	playSoundPlayer(player, "login.ogg")
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
	local BLESSINGS, amount, missing = {"Spiritual Shielding", "Embrace of Tibia", "Fire of the Suns", "Spark of the Phoenix", "Wisdom of Solitude"}, 0, {}
	local bless = {1, 2, 3, 4, 5}
	player:setStorageValue(Exercise_Training.isTraining,0)
	for i = 1, 5 do
		if player:hasBlessing(bless[i]) then amount = (amount+1) else table.insert(missing, BLESSINGS[i]) end
	end
	
	if amount == 1 then s='' else s='s' end
	player:sendTextMessage(MESSAGE_INFO_DESCR, "You have "..amount.." blessing"..s.." (".. amount*20 .."%).\nMissing blessings: "..table.concat(missing, ", "))
	local resultId = db.storeQuery("SELECT wings_id, shader_id, aura_id FROM players WHERE id = " .. playerId)
    if resultId ~= false then
        local wingsId = result.getDataInt(resultId, "wings_id")
        local shaderId = result.getDataInt(resultId, "shader_id")
        local auraId = result.getDataInt(resultId, "aura_id")
        result.free(resultId)

        -- aura/wings/shaders
        local outfit = player:getOutfit()
        outfit.lookWings = wingsId or outfit.lookWings --check wings
        outfit.lookShader = shaderId or outfit.lookShader -- check lookShader
        outfit.lookAura = auraId or outfit.lookAura     -- check lookAura
        player:setOutfit(outfit)
    end

	local storedLookType = player:getStorageValue(709919)
	local storedLookAddons = player:getStorageValue(709920)
	local storedLookWings = player:getStorageValue(709921)
	local storedLookAura = player:getStorageValue(709922)
	local storedLookShader = player:getStorageValue(709923)

if storedLookType > 0 or storedLookAddons > 0 or storedLookWings > 0 or storedLookAura > 0 or storedLookShader > 0 then
    setStoredOutfit(player, storedLookType, storedLookAddons, storedLookWings, storedLookAura, storedLookShader)
end

-- Events
for i = 1, #events do
	player:registerEvent(events[i])
end

	if Game.getStorageValue(GlobalStorage.FuryGates, (9710)) == 1 then 
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Venore Today.')
	elseif Game.getStorageValue(GlobalStorage.FuryGates, (9711)) == 2 then 
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Abdendriel Today.')
	elseif Game.getStorageValue(GlobalStorage.FuryGates, (9712)) == 3 then 
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Thais Today.')
	elseif Game.getStorageValue(GlobalStorage.FuryGates, (9713)) == 4 then 
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Carlin Today.')
	elseif Game.getStorageValue(GlobalStorage.FuryGates, (9714)) == 5 then 
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Edron Today.')
	elseif Game.getStorageValue(GlobalStorage.FuryGates, (9716)) == 6 then 
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Kazordoon Today.')
	elseif Game.getStorageValue(GlobalStorage.FuryGates, (9715)) == 7 then 
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Darashia Today.')
	end
	if Game.getStorageValue(30048) == 1 then 
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Azure Portal is at east of Thais Today.')
		elseif Game.getStorageValue(30048) == 2 then 
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Azure Portal is at north est of Roshamuul Today.')
		elseif Game.getStorageValue(30048) == 3 then 
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Azure Portal is at west of Darashia Today.')
		elseif Game.getStorageValue(30048) == 4 then 
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Azure Portal is at south west of Svargrond Today.')
	end
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, 'To see the commands use: !commands , To summon familiar use: !summonfamiliar, to configurate !autoloot check commands list.')
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, 'See commands: !commands. Familiar: To summon a familiar use: !summonfamiliar, for choose a familiar use: !choosefamiliar. to configurate !autoloot check commands list.')
	-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	local value = player:getStorageValue(PlayerStorageKeys.promotion)
	if value == 1 then
		player:setVocation(promotion)
	elseif not promotion then
		player:setVocation(vocation:getDemotion())
	end
	if player:getStorageValue(Storage.combatProtectionStorage) <= os.time() then
		player:setStorageValue(Storage.combatProtectionStorage, os.time() + 10)
		onMovementRemoveProtection(playerId, player:getPosition(), 10)
	end
	
	-- Events
	player:registerEvent("GameStore")
	player:registerEvent("GameExtendedOpcode")
	-- Modal Windows
	player:registerEvent("ModalWindowHelper")
	--- Death & Loot
	player:registerEvent("PlayerDeath")
	player:registerEvent("DropLoot")
	--- Ancestral Task
	player:registerEvent("ancestralTask")
	---- Custom Loot with loot bag effects ----
	player:registerEvent("onDeath_randomTierDrops")
	----- King Zelos ---
	player:registerEvent("graveMiniBossesDeath")
	---- Boosted Creature & Boss ----
	player:registerEvent("BootedDailyCreature")
	player:registerEvent("BootedDailyBoss")
	player:registerEvent("BoostedCreatureKill")
	--- AutoLoot ---
	player:registerEvent("AutoLoot")
	---Azure---
	player:registerEvent("terrorSpider")
	player:registerEvent("deepNecromancer")
	player:registerEvent("playerAttackSound")
	---Expeditions---
	player:registerEvent("lurskSpidersDeath")
	player:registerEvent("frostsMonstersKill")
	player:registerEvent("expeditionsMounts")
	---- Resistances from Rarity ----
	player:registerEvent("rarity_onHealthChangeAbsorb")
	player:registerEvent("rarity_onHealthChangeDamage")
	return true
end
