local randLoot = {
	{itemId = 2666},
	{itemId = 2671},
	{itemId = 7909},
	{itemId = 2676},
	{itemId = 2680},
	{itemId = 2682},
	{itemId = 2675},
	{itemId = 2690},
	{itemId = 27185},
	{itemId = 27186},
	{itemId = 27187}
}

local uglyMonster = CreatureEvent("UglyMonster")
function uglyMonster.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local chance = math.random(100)
	if chance >= 80 and Game.getStorageValue(16651) ~= 1 then
		Game.createMonster("Ugly Monster", creature:getPosition())
		Game.setStorageValue(16651, 1)
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
uglyMonster:register()

local uglyMonsterDeath = CreatureEvent("UglyMonsterDeath")
function uglyMonsterDeath.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	Game.setStorageValue(16651, 0)
end
uglyMonsterDeath:register()

local uglyMonsterDrop = CreatureEvent("UglyMonsterDrop")
function uglyMonsterDrop.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local chance = math.random(100)
	if chance == 100 then
		chance = math.random(100)
		if chance >= 98 then
			chance = math.random(9,11)
			Game.createItem(randLoot[chance].itemId, 1, creature:getPosition())
		else
			chance = math.random(1,8)
			Game.createItem(randLoot[chance].itemId, 1, creature:getPosition())
		end
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
uglyMonsterDrop:register()
