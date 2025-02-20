local mType = Game.createMonsterType("Furious Paladin's Apparition")
local monster = {}

monster.description = "a Furious paladin's apparition"
monster.experience = 28600
monster.outfit = {
	lookType = 129,
	lookHead = 57,
	lookBody = 42,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 0
monster.speed = 435
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}
monster.events = {
	"playerAttackSound"
}
monster.getLevel = {
	minLevel = 300,
	maxLevel = 300
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
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
	{text = "I could be your evil twin!", yell = false},
	{text = "I'll take your place when you are gone.", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -1000, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -1000, radius = 4, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_PHYSICALDAMAGE, minDamage = -650, maxDamage = -900, range = 7, shootEffect = CONST_ANI_DIAMONDARROW, effect = CONST_ME_DRAWBLOOD, target = true}
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -11},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)