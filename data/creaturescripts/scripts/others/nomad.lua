function onKill(creature, target)
	if not target or not target:isMonster() then
        return true
    end
	local targetMonster = target:getMonster()
	if not targetMonster then
		return true
	end

	if targetMonster:getName():lower() ~= 'nomad' then
		return true
	end

	local player = creature:getPlayer()
	if player:getStorageValue(Storage.thievesGuild.Mission04) == 3 then
		player:setStorageValue(Storage.thievesGuild.Mission04, 4)
	end

	return true
end
