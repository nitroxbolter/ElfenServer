local mType = Game.createMonsterType("White Weretiger")
local monster = {}

monster.description = "a White Weretiger"
monster.experience = 4860
monster.outfit = {
	lookType = 1095,
	lookHead = 0,
	lookBody = 121,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 6100
monster.maxHealth = 6100
monster.race = "undead"
monster.corpse = 26691
monster.speed = 220
monster.manaCost = 0


monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
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
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {

}

monster.loot = {
	{id = "gold coin", chance = 50000, maxCount = 100},
	{id = "gold coin", chance = 50000, maxCount = 90},
	{id = "small emerald", chance = 5882, maxCount = 5},
	{id = "platinum coin", chance = 35333, maxCount = 2},
	{id = 2167, chance = 606},
	{id = "brown mushroom", chance = 5263, maxCount = 5},
	{id = "magic sulphur", chance = 620},
	{id = "assassin star", chance = 70, maxCount = 5},
	{id = "dreaded cleaver", chance = 30},
	{id = "mastermind potion", chance = 750},
	{id = "strong health potion", chance = 6250},
	{id = "strong mana potion", chance = 7692},
	{id = "terra mantle", chance = 70},
	{id = "springsprout rod", chance = 1010},
	{id = 27428, chance = 1000},
	{id = 27423, chance = 7000, maxCount = 2},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -480},
	{name ="explosion wave", interval = 2000, chance = 15, minDamage = -280, maxDamage = -400, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -520, radius = 4, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 83,
	armor = 83
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
