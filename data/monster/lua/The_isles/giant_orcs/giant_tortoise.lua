local mType = Game.createMonsterType("Giant Tortoise")
local monster = {}

monster.description = "a Giant Tortoise"
monster.experience = 26500
monster.outfit = {
	lookType = 1135,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 40000
monster.maxHealth = 40000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 450
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 1000,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
}

monster.voices = {
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500},
	{name ="combat", interval = 1500, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -650, length = 4, spread = 3, effect = 221, target = false},
	{name ="combat", interval = 1500, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -650, radius = 4, effect = 218, target = false},
	{name ="combat", interval = 1500, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -650, radius = 4, effect = 219, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 50,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
