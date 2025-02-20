local mType = Game.createMonsterType("Azure")
local monster = {}
monster.description = "a Azure"
monster.experience = 80000
monster.outfit = {
	lookType = 964
}

monster.health = 225000
monster.maxHealth = 225000
monster.corpse = 26691
monster.speed = 650
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4*1000,
	chance = 20
}

monster.getLevel = {
	minLevel = 1,
	maxLevel = 10
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	challengeable = true,
	convinceable = false,
	ignoreSpawnBlock = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 1,
	staticAttackChance = 95
}

monster.summons = {
}

monster.voices = {
}

monster.events = {
	"onDeath_randomTierDrops",
	"playerAttackSound"
}

monster.loot = {
	{id = 2160, chance = 100000, maxCount = 35}, 
	{id = 26780, chance = 65000, maxCount = 22},
	{id = 26779, chance = 50000, maxCount = 15},
	{id = 26799, chance = 95000, maxCount = 10},
	{id = 26800, chance = 95000, maxCount = 15},
	{id = 26801, chance = 95000, maxCount = 20}, 
	{id = 26783, chance = 75000, maxCount = 8},
	{id = 26793, chance = 63400, maxCount = 8},
	{id = 26795, chance = 51100, maxCount = 6},
	{id = 26735, chance = 35550, maxCount = 7},
	{id = 26738, chance = 35950, maxCount = 7},
	{id = 21725, chance = 8950},
	{id = 2539, chance = 1100},
	{id = 8918, chance = 1400},
	{id = "golden armor", chance = 33000},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "golden legs", chance = 22000},
	{id = "golden boots", chance = 11000},
	{id = "ornamented axe", chance = 6500},
	{id = "hellforged axe", chance = 5500},
	{id = "gold ingot", chance = 17500, maxCount = 3},
	{id = "royal helmet", chance = 7000},
	{id = "silver token", chance = 8500, maxCount = 5},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 200, attack = 200},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1100, length = 8, spread = 3, effect = 206, target = false},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -1250, radius = 3, effect = 207, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -450, maxDamage = -1030, range = 7, effect = 208, target = true},
	{name ="combat", interval = 1700, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -1050, radius = 3, effect = 209, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 500, maxDamage = 1500, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 950, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 5},
	{type = COMBAT_MANADRAIN, percent = 5},
	{type = COMBAT_DROWNDAMAGE, percent = 5},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "fire", combat = true, condition = true},
	{type = "drown", condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	monster:registerEvent("AzureDeath")
	if monster:getId() == creature:getId() then
	end
end

mType.onDisappear = function(monster, creature)
	if monster:getId() == creature:getId() then
	end
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
	if monster:getId() == creature:getId() then
	end
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
