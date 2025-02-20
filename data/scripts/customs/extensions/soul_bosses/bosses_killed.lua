local bosses = {
	["goshnar's malice"] = {storage = 720029},
	["goshnar's hatred"] = {storage = 720030},
	["goshnar's spite"] = {storage = 720031},
	["goshnar's cruelty"] = {storage = 720032},
	["goshnar's greed"] = {storage = 720033},
	["goshnar's megalomania"] = {storage = 720034},
}

local bossesSoulWar = CreatureEvent("soulWarBossesKill")
function bossesSoulWar.onKill(creature, target)
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
			if bossConfig.storage then
				attackerPlayer:setStorageValue(bossConfig.storage, 1)
			end
		end
	end
	return true
end
bossesSoulWar:register()

local loginSoulBosses = CreatureEvent("soulWarBossesOnDeath")

function loginSoulBosses.onLogin(player)
	player:registerEvent("soulWarBossesKill")
	return true
end

loginSoulBosses:register()