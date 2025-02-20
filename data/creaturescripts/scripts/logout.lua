function onLogout(player)
	local playerId = player:getGuid() -- get playerid
    local outfit = player:getOutfit()  -- get player outfit
	if nextUseStaminaTime[playerId] then
		nextUseStaminaTime[playerId] = nil
	end
	local wingsClientId = outfit.lookWings or 0
    local shaderClientId = outfit.lookShader or 0 -- check lookShader
    local auraClientId = outfit.lookAura or 0    -- check lookAura

    local query = "UPDATE players SET wings_id = " .. wingsClientId .. ", shader_id = " .. shaderClientId .. ", aura_id = " .. auraClientId .. " WHERE id = " .. playerId
    db.query(query)

    local outfit = player:getOutfit()
    local storedLookType = outfit.lookType
    local storedLookAddons = outfit.lookAddons
    local storedLookWings = outfit.lookWings
    local storedLookAura = outfit.lookAura
    local storedLookShader = outfit.lookShader
    
    player:setStorageValue(709919, storedLookType)
    player:setStorageValue(709920, storedLookAddons)
    player:setStorageValue(709921, storedLookWings)
    player:setStorageValue(709922, storedLookAura)
    player:setStorageValue(709923, storedLookShader)

    return true
end
