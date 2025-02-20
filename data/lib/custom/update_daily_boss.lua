function updateBoostedBossInDatabase() 
	local randomMonsterIndex = math.random(#boostedBossesList)
	local randomMonster = boostedBossesList[randomMonsterIndex]
		local query = string.format("INSERT INTO `boosted_boss` (`date`, `boostname`, `raceid`) VALUES (NOW(), '%s', '%s')", randomMonster, randomMonster)
		db.query(query)
		setGlobalStorageValue(PlayerStorageKeys.boostedBoss, randomMonsterIndex)
		print("Today's Boosted Boss:" .. randomMonster)
	end