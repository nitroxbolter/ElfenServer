function onKill(cid, target, damage, flags)
	if not target or not target:isMonster() then
        return true
    end
	if(isMonster(target)) then
		if(string.lower(getCreatureName(target)) == "eradicator") then
		local monster = Game.createMonster("Eradicatorr", getThingPos(cid))  -- 33389" y="31539" z="11"
      
		end
	end
	return true
end
