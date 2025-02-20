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


function onLogin(player)
	local playerId = player:getGuid()
	local serverName = configManager.getString(configKeys.SERVER_NAME)
	local loginStr = "Welcome to " .. serverName .. "!"
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. " Please choose your outfit."
		player:sendOutfitWindow()
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end
		loginStr = string.format("Your last visit in %s: %s.", serverName, os.date("%d %b %Y %X", player:getLastLoginSaved()))
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
	local BLESSINGS, amount, missing = {"Spiritual Shielding", "Embrace of Tibia", "Fire of the Suns", "Spark of the Phoenix", "Wisdom of Solitude"}, 0, {}
	local bless = {1, 2, 3, 4, 5}
	
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


	-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	if player:isPremium() then
		local value = player:getStorageValue(PlayerStorageKeys.promotion)
		if value == 1 then
			player:setVocation(promotion)
		end
	elseif not promotion then
		player:setVocation(vocation:getDemotion())
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
	---- Easter Egg ---
	player:registerEvent("easterEgg_Event")
	return true
end
