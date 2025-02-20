local bosses = {
	["ashseer dravok"] = {storage = 222441},
	["tidebreaker voryn"] = {storage = 222442},
	["voidweaver krythax"] = {storage = 222443},
	["icebound thryssan"] = {storage = 222444},
	["hollowborn zepharix"] = {storage = 222445},
}

local expeditionsMounts = CreatureEvent("expeditionsMounts")
function expeditionsMounts.onKill(creature, target)
	local targetMonster = target:getMonster()
	if not targetMonster or targetMonster:getMaster() then
		return true
	end
	local bossConfig = bosses[targetMonster:getName():lower()]
	if not bossConfig then
		return true
	end
	for key, value in pairs(targetMonster:getDamageMap()) do
		local attackerPlayer = Player(key)
		if attackerPlayer then
			if bossConfig.storage == 0 then
				attackerPlayer:setStorageValue(bossConfig.storage, 1)
			end
		end
	end
	for value, config in pairs(bosses) do
		local bossKillCount = creature:getStorageValue(config.storage)
		if bossKillCount == 20 then
			return true
		elseif bossKillCount < 20 then
			creature:setStorageValue(config.storage, bossKillCount + 1)
		end
	end
	local creaturePlayer = Player(creature)
    if creaturePlayer then
		if creaturePlayer:getStorageValue(22446) == 0 or creaturePlayer:getStorageValue(22446) == -1 then
			if creaturePlayer:getStorageValue(222441) == 1 or creaturePlayer:getStorageValue(222442) == 1 or creaturePlayer:getStorageValue(222443) == 1 or creaturePlayer:getStorageValue(222444) == 1 or creaturePlayer:getStorageValue(222445) == 1 then
				creaturePlayer:addOutfit(1372)
				creaturePlayer:addOutfit(1373)
				creaturePlayer:setStorageValue(222446, 1)
			end
		end
		if creaturePlayer:getStorageValue(222441) == 5 then
        	creaturePlayer:addMount(131)
        	creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Crimon Sentinel Mount for reaching 5 kills of Ashseer Dravok.")
		elseif creaturePlayer:getStorageValue(222441) == 10 then
			creaturePlayer:addMount(132)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Crimon Tempest Mount for reaching 10 kills of Ashseer Dravok.")
		elseif creaturePlayer:getStorageValue(222441) == 20 then
			creaturePlayer:addMount(133)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Crimon Juggernaut Mount for reaching 20 kills of Ashseer Dravok.")
		elseif creaturePlayer:getStorageValue(222442) == 5 then
			creaturePlayer:addMount(137)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Golden Sentinel Mount for reaching 5 kills of Tidebreaker Voryn.")
		elseif creaturePlayer:getStorageValue(222442) == 10 then
			creaturePlayer:addMount(138)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Golden Tempest Mount for reaching 10 kills of Tidebreaker Voryn.")
		elseif creaturePlayer:getStorageValue(222442) == 20 then
			creaturePlayer:addMount(139)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Golden Juggernaut Mount for reaching 20 kills of Tidebreaker Voryn.")
		elseif creaturePlayer:getStorageValue(222443) == 5 then
			creaturePlayer:addMount(134)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Emerald Sentinel Mount for reaching 5 kills of Voidweaver Krythax.")
		elseif creaturePlayer:getStorageValue(222443) == 10 then
			creaturePlayer:addMount(135)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Emerald Tempest Mount for reaching 10 kills of Voidweaver Krythax.")
		elseif creaturePlayer:getStorageValue(222443) == 20 then
			creaturePlayer:addMount(136)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Emerald Juggernaut Mount for reaching 20 kills of Voidweaver Krythax.")
		elseif creaturePlayer:getStorageValue(222444) == 5 then
			creaturePlayer:addMount(125)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Azure Sentinel Mount for reaching 5 kills of Icebound Thryssan.")
		elseif creaturePlayer:getStorageValue(222444) == 10 then
			creaturePlayer:addMount(126)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Azure Tempest Mount for reaching 10 kills of Icebound Thryssan.")
		elseif creaturePlayer:getStorageValue(222444) == 20 then
			creaturePlayer:addMount(127)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Azure Juggernaut Mount for reaching 20 kills of Icebound Thryssan.")
		elseif creaturePlayer:getStorageValue(222445) == 5 then
			creaturePlayer:addMount(128)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Ashen Sentinel Mount for reaching 5 kills of Hollowborn Zepharix.")
		elseif creaturePlayer:getStorageValue(222445) == 10 then
			creaturePlayer:addMount(129)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Ashen Tempest Mount for reaching 10 kills of Hollowborn Zepharix.")
		elseif creaturePlayer:getStorageValue(222445) == 20 then
			creaturePlayer:addMount(130)
			creaturePlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have obtained Ashen Juggernaut Mount for reaching 20 kills of Hollowborn Zepharix.")
    	end
	else
		return true
	end
	return true
end
expeditionsMounts:register()