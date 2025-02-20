local mType = Game.createMonsterType("Enhanced Death Book")
local monster = {}

monster.description = "a Enhanced Death book"
monster.experience = 20000
monster.outfit = {
	lookType = 989,
	lookHead = 79,
	lookBody = 83,
	lookLegs = 113,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 550
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
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
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}
monster.events = {
	"playerAttackSound"
}
monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "Platinum Coin", chance = 10000, maxCount = 10},
	{id = "Small Diamond", chance = 10000, maxCount = 7},
	{id = "Small Stone", chance = 10000, maxCount = 7},
	{id = "Small Topaz", chance = 10000, maxCount = 7},
	{id = "Protection Amulet", chance = 10000},
	{id = "Terra Boots", chance = 350},
	{id = "Book page", chance = 17500, maxCount = 3},
	{id = "Silken bookmark", chance = 15000},
	{id = "Terra Hood", chance = 8600},
	{id = "Diamond Sceptre", chance = 3600},
	{id = "Terra Mantle", chance = 6250},
	{id = "Terra Legs", chance = 6250},
	{id = "Terra Amulet", chance = 11500},
	{id = "Stone Skin Amulet", chance = 7350},
	{id = "Springsprout Rod", chance = 5350},
	{id = "Sacred Tree Amulet", chance = 3350},
	{id = "Swamplair Armor", chance = 1250}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -980, range = 7, shootEffect = CONST_ANI_EARTHARROW, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -975, length = 5, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -230, maxDamage = -1280, range = 7, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 80
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
