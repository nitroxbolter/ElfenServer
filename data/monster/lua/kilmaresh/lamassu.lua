local mType = Game.createMonsterType("Lamassu")
local monster = {}

monster.description = "a lamassu"
monster.experience = 9000
monster.outfit = {
	lookType = 1021,
	lookHead = 50,
	lookBody = 2,
	lookLegs = 0,
	lookFeet = 76,
	lookAddons = 0,
	lookMount = 0
}



monster.health = 8700
monster.maxHealth = 8700
monster.race = "blood"
monster.corpse = 26691
monster.speed = 360
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
}

monster.loot = {
	{id = "platinum coin", chance = 100000},
	{id = "lamassu horn", chance = 13400, maxCount = 5},
	{id = "red crystal fragment", chance = 10500},
	{id = "terra amulet", chance = 10000},
	{id = "lamassu hoof", chance = 7700},
	{id = "violet crystal shard", chance = 6800},
	{id = "blue crystal shard", chance = 6500},
	{id= 2156, chance = 6200}, -- red gem
	{id = "terra hood", chance = 5900},
	{id = "sacred tree amulet", chance = 2300},
	{id = "elven amulet", chance = 2000},
	{id = "violet gem", chance = 1700}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -550},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -350, maxDamage = -490, radius = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -330, maxDamage = -410, range = 5, radius = 3, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_SMALLPLANTS, target = true}
}

monster.defenses = {
	defense = 82,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = -30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
