local mType = Game.createMonsterType("King Zelos")
local monster = {}

monster.description = "King Zelos"
monster.experience = 120000
monster.outfit = {
	lookType = 1012,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 480000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 26691
monster.speed = 425
monster.maxSummons = 6

monster.changeTarget = {
	interval = 4000,
	chance = 10
}
monster.events = {
	"playerAttackSound"
}
monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.loot = {
	{id = "platinum coin", minCount = 1, maxCount = 5, chance = 100000},
	{id = "crystal coin", minCount = 0, maxCount = 5, chance = 50000},
	{id = "supreme health potion", minCount = 0, maxCount = 20, chance = 45000},
	{id = "ultimate mana potion", minCount = 0, maxCount = 6, chance = 42000},
	{id = "ultimate spirit potion", minCount = 0, maxCount = 14, chance = 42000},
	{id = "bullseye potion", minCount = 0, maxCount = 10, chance = 22000},
	{id = "berserk potion", minCount = 0, maxCount = 10, chance = 22000},
	{id = "gold token", minCount = 0, maxCount = 3, chance = 18000},
	{id = "silver token", minCount = 0, maxCount = 3, chance = 25000},
	{id = "green gem", chance = 19000},
	{id = "red gem", chance = 18500},
	{id = 26779, chance = 28000, maxCount = 8}, -- Nightmare Coin
	{id = "yellow gem", chance = 18500},
	{id = "giant sapphire", chance = 16800},
	{id = "collar of green plasma", chance = 15200},
	{id = "magma coat", chance = 15200},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "gold ingot", minCount = 0, maxCount = 1, chance = 18000},
	{id = "red tome", chance = 18200},
	{id = 26185, chance = 12000},-- ring of blue plasma
	{id = 26189, chance = 12000},-- ring of red plasma
	{id = "young lich worm", chance = 5500},
	{id = "mortal mace", chance = 1300},
	{id = "golden hyaena pendant", chance = 1100},
	{id = "bow of cataclysm", chance = 600},
	{id = "galea mortis", chance = 550},
	{id = "shadow cowl", chance = 530},
	{id = "toga mortis", chance = 500},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name = "melee", type = COMBAT_PHYSICALDAMAGE, interval = 2000, minDamage = -900, maxDamage = -2700},
	{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 15, length = 8, spread = 0, minDamage = -1200, maxDamage = -3200, effect = CONST_ME_HITBYFIRE},
	{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 10, length = 8, spread = 3, minDamage = -600, maxDamage = -1600, effect = CONST_ME_SMALLCLOUDS},
}

monster.defenses = {
	defense = 78,
	armor = 78,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2000, minDamage = 1450, maxDamage = 5350, effect = 185},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 3},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel the power of death unleashed!", yell = false},
	{text = "I will rule again and my realm of death will span the world!", yell = false},
	{text = "My lich-knights will conquer this world for me!", yell = false},
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)