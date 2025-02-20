local mType = Game.createMonsterType("Adult Goanna")
local monster = {}

monster.description = "an adult goanna"
monster.experience = 6650
monster.outfit = {
	lookType = 1020,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 8300
monster.maxHealth = 8300
monster.race = "blood"
monster.corpse = 26691
monster.speed = 300
monster.manaCost = 0

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
	runHealth = 10,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
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
	{id = "platinum coin", chance = 100000, maxCount = 3},
	{id = "envenomed arrow", chance = 55360, maxCount = 8},
	{id = "earth arrow", chance = 16800, maxCount = 29},
	{id = "terra rod", chance = 11000},
	{id = "goanna meat", chance = 12140},
	{id = "goanna claw", chance = 4290},
	{id = "lizard heart", chance = 1400},
	{id = "red goanna scale", chance = 10000},
	{id = "fur armor", chance = 3200},
	{id = "serpent sword", chance = 3600},
	{id = "terra amulet", chance = 4650},
	{id = "terra hood", chance = 7100},
	{id = "wood cape", chance = 1800},
	{id = "sacred tree amulet", chance = 2500},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350, condition = {type = CONDITION_POISON, totalDamage = 19, interval = 4000}},
	{name ="wave t", interval = 2000, chance = 10, minDamage = -250, maxDamage = -380, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -450, maxDamage = -550, range = 3, radius = 1, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_EXPLOSIONHIT, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -210, maxDamage = -300, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
	defense = 84,
	armor = 84,
	{name = "speed", chance = 15, interval = 2*1000, speed = 500, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
