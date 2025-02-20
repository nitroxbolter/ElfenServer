local mType = Game.createMonsterType("Enhanced Electric Book")
local monster = {}

monster.description = "an Enhanced Electric book"
monster.experience = 12034
monster.outfit = {
	lookType = 989,
	lookHead = 15,
	lookBody = 91,
	lookLegs = 85,
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
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = false,
	pet = false
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
	{id = "Platinum Coin", chance = 100000, maxCount = 28},
	{id = "Book page", chance = 900, maxCount = 8},
	{id = "Glowing Rune", chance = 900, maxCount = 7},
	{id = "Ultimate Health Potion", chance = 10000, maxCount = 7},
	{id = "Ultimate Mana Potion", chance = 10000, maxCount = 7},
	{id = "Energy Ball", chance = 900, maxCount = 7},
	{id = "Silken bookmark", chance = 800, maxCount = 7},
	{id = "Lightning Pendant", chance = 9500},
	{id = "Lightning Boots", chance = 11500},
	{id = "Lightning Headband", chance = 8500},
	{id = "Might Ring", chance = 4500},
	{id = "Spellweaver's Robe", chance = 2350},
	{id = "Wand of Defiance", chance = 3350},
	{id = "Haunted Blade", chance = 1550},
	{id = "Lightning Legs", chance = 5350}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -900},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -880, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -905, radius = 3, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 1500, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_STUN, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
