local mType = Game.createMonsterType("Young Goanna")
local monster = {}

monster.description = "a young goanna"
monster.experience = 6100
monster.outfit = {
	lookType = 1029,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 6200
monster.maxHealth = 6200
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
	{id = "envenomed arrow", chance = 68000, maxCount = 35},
	{id = "terra rod", chance = 10900},
	{id = "goanna meat", chance = 9800},
	{id = "snakebite rod", chance = 9000},
	{id = "blue goanna scale", chance = 7900},
	{id = "goanna claw", chance = 4300},
	{id = "serpent sword", chance = 4000},
	{id = "leaf star", chance = 3800, maxCount = 3},
	{id = "silver amulet", chance = 3800},
	{id = "springsprout rod", chance = 2700},
	{id = "terra amulet", chance = 1100},
	{id = "lizard heart", chance = 800},
	{id = "sacred tree amulet", chance = 800},
	{id = "fur armor", chance = 270},
	{id = "terra hood", chance = 250}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -230, condition = {type = CONDITION_POISON, totalDamage = 15, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -490, range = 3, radius = 1, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_EXPLOSIONHIT, target = true}
}

monster.defenses = {
	defense = 78,
	armor = 78,
	{name = "speed", chance = 15, interval = 2*1000, speed = 500, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
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
