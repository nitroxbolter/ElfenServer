local mType = Game.createMonsterType("Nible Maw")
local monster = {}

monster.description = "a Nible Maw"
monster.experience = 6800
monster.outfit = {
	lookType = 1284,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 94,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 7300
monster.maxHealth = 7300
monster.race = "blood"
monster.corpse = 26691
monster.speed = 325

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "*chomp* Mmmoh! *chomp*", yell = false},
	{text = "Mwaaahgod!", yell = false},
	{text = "Overmwaaaaah! *gurgle*", yell = false},
	{text = "Mmmwahmwahmwhah, mwaaah!", yell = false},
}

monster.loot = {
	{id = "strong health potion", chance = 100000, maxCount = 3},
	{id = "platinum coin", chance = 75135, maxCount = 28},
	{id = "yellow gem", chance = 5000},
	{id = "frazzle tongue", chance = 9860},
	{id = "frazzle skin", chance = 7460},
	{id = "onyx chip", chance = 6660, maxCount = 3},
	{id = "gummy rotworm", chance = 4560, maxCount = 2},
	{id = "red crystal fragment", chance = 3580},
	{id = "melon", chance = 1480},
	{id = "raspberry", chance = 1420, maxCount = 2},
	{id = "dark chocolate coin", chance = 980, maxCount = 2},
	{id = "assassin dagger", chance = 700},
	{id = "blue robe", chance = 630},
	{id = "knight armor", chance = 580},
	{id = "emerald bangle", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -499},
	{name ="condition", type = CONDITION_BEWITCHED, interval = 2000, chance = 10, minDamage = -500, maxDamage = -1000, radius = 3, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -1000, length = 8, spread = 3, effect = 326, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ARCANEDAMAGE, minDamage = -150, maxDamage = -500, radius = 2, shootEffect = 90, effect = 333, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -50, maxDamage = -800, length = 8, spread = 3, effect = 329, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 55
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 40},
	{type = COMBAT_ARCANEDAMAGE, percent = 15},
	{type = COMBAT_WATERDAMAGE, percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
