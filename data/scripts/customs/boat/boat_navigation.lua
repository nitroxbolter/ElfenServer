local boatSystem = MoveEvent()

print(">> Boat/Navigation System Loaded")
function boatSystem.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
    if not player then
        return true
    end

    local playerOutfit = player:getOutfit()
	player:setStorageValue(709919, playerOutfit.lookType)
    player:setStorageValue(709920, playerOutfit.lookAddons)
	player:setStorageValue(709921, playerOutfit.lookWings)
    player:setStorageValue(709922, playerOutfit.lookAura)
	player:setStorageValue(709923, playerOutfit.lookShader)
    playerOutfit.lookAddons = 0
    if player:getStorageValue(Ships.ScarletRaven) >= 1 then
    if player:getSex() == PLAYERSEX_FEMALE then
        playerOutfit.lookType = 1110
		playerOutfit.lookWings = 0
		playerOutfit.lookAura = 0
		playerOutfit.lookShader = 0
    else
        playerOutfit.lookType = 1110
		playerOutfit.lookWings = 0
		playerOutfit.lookAura = 0
		playerOutfit.lookShader = 0
    end
		player:setOutfit(playerOutfit)
		return true
	elseif player:getStorageValue(Ships.TheAwakener) >= 1 then
		if player:getSex() == PLAYERSEX_FEMALE then
			playerOutfit.lookType = 1111
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		else
			playerOutfit.lookType = 1111
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		end
			player:setOutfit(playerOutfit)
			return true
	elseif player:getStorageValue(Ships.TheCounterspell) >= 1 then
		if player:getSex() == PLAYERSEX_FEMALE then
			playerOutfit.lookType = 1112
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		else
			playerOutfit.lookType = 1112
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		end
			player:setOutfit(playerOutfit)
			return true
	elseif player:getStorageValue(Ships.TheExplorer) >= 1 then
		if player:getSex() == PLAYERSEX_FEMALE then
			playerOutfit.lookType = 1113
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		else
			playerOutfit.lookType = 1113
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		end
			player:setOutfit(playerOutfit)
			return true
	elseif player:getStorageValue(Ships.Whisperwind) >= 1 then
		if player:getSex() == PLAYERSEX_FEMALE then
			playerOutfit.lookType = 1114
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		else
			playerOutfit.lookType = 1114
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		end
			player:setOutfit(playerOutfit)
			return true
	elseif player:getStorageValue(Ships.MenethilMarch) >= 1 then
		if player:getSex() == PLAYERSEX_FEMALE then
			playerOutfit.lookType = 1115
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		else
			playerOutfit.lookType = 1115
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		end
			player:setOutfit(playerOutfit)
			return true
	elseif player:getStorageValue(Ships.Shadowmeld) >= 1 then
		if player:getSex() == PLAYERSEX_FEMALE then
			playerOutfit.lookType = 1116
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		else
			playerOutfit.lookType = 1116
			playerOutfit.lookWings = 0
			playerOutfit.lookAura = 0
			playerOutfit.lookShader = 0
		end
			player:setOutfit(playerOutfit)
			return true
	else
		player:teleportTo(fromPosition, true)
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        player:say("You need a boat to ship on the sea.", TALKTYPE_MONSTER_SAY)
	end
	return true
end
boatSystem:id(27725, 27728, 27729, 27730, 27731)

boatSystem:register()


local boatStepOut = MoveEvent()

function boatStepOut.onStepOut(cid, item, fromPosition, itemEx, toPosition)
    local player = Player(cid)
    if not player then
        return true
    end

    -- Retrieve stored outfit look type and addons from storage
    local storedLookType = player:getStorageValue(709919)
    local storedLookAddons = player:getStorageValue(709920)
	local storedLookWings = player:getStorageValue(709921)
	local storedLookAura = player:getStorageValue(709922)
	local storedLookShader = player:getStorageValue(709923)

    -- Check if the stored values are valid
    if storedLookType > 0 and storedLookAddons >= 0 then
        local playerOutfit = player:getOutfit()
        playerOutfit.lookType = storedLookType
        playerOutfit.lookAddons = storedLookAddons
		playerOutfit.lookWings = storedLookWings
		playerOutfit.lookAura = storedLookAura
		playerOutfit.lookShader = storedLookShader
        player:setOutfit(playerOutfit)
    else
    end

    return true
end

boatSystem:type("stepout")
boatStepOut:id(27725, 27728, 27729, 27730, 27731)
boatStepOut:register()

