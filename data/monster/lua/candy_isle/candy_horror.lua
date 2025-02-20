local mType = Game.createMonsterType("Candy Horror")
local monster = {}

monster.description = "a Candy Horror"
monster.experience = 8200
monster.outfit = {
	lookType = 1286,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 10000
monster.maxHealth = 10000
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
	{text = "We will devour you ...", yell = false},
	{text = "Wait for us, little treat ...", yell = false},
	{text = "Horrraa!", yell = false},
}

monster.loot = {
	{id = "gold coin", chance = 100000, maxCount = 30},
	{id = "platinum coin", chance = 75135, maxCount = 40},
	{id = 7632, chance = 6650},
	{id = 7633, chance = 5500},
	{id = "red gem", chance = 5530},
	{id = "energy bar", chance = 5130},
	{id = "black shield", chance = 2800},
	{id = "gummy rotworm", chance = 2720, maxCount = 2},
	{id = "wand of decay", chance = 1760},
	{id = "brigadeiro", chance = 1200},
	{id = 2680, chance = 1200, maxCount = 4},
	{id = "dark chocolate coin", chance = 720, maxCount = 3},
	{id = "violet gem", chance = 600},
	{id = "crown armor", chance = 630},
	{id = "elven mail", chance = 580},
	{id = "voltage armor", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -800},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -1110, radius = 4, effect = 323, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ARCANEDAMAGE, minDamage = 0, maxDamage = -1200, radius = 1, shootEffect = 91, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -1050, radius = 1, shootEffect = 69, effect = 326, target = true}
}

monster.defenses = {
	defense = 80,
	armor = 80
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = 60},
	{type = COMBAT_ARCANEDAMAGE, percent = 20},
	{type = COMBAT_WATERDAMAGE, percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
