local mType = Game.createMonsterType("Ripper Spectre")
local monster = {}

monster.description = "a ripper spectre"
monster.experience = 3500
monster.outfit = {
	lookType = 1068,
	lookHead = 81,
	lookBody = 78,
	lookLegs = 61,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 3800
monster.maxHealth = 3800
monster.race = "blood"
monster.corpse = 26691
monster.speed = 390
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
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
	{id = "platinum coin", chance = 100000, maxCount = 5},
	{id = "great spirit potion", chance = 30910, maxCount = 2},
	{id = "two handed sword", chance = 16500},
	{id = "terra rod", chance = 4780},
	{id = "silver brooch", chance = 15190},
	{id = "emerald bangle", chance = 14740},
	{id = "twin hooks", chance = 1170},
	{id = "springsprout rod", chance = 1210},
	{id = "coral brooch", chance = 1330},
	{id = "serpent sword", chance = 1950},
	{id = "hexagonal ruby", chance = 800},
	{id = "assassin dagger", chance = 970},
	{id = "spike sword", chance = 530},
	{id = "wyvern fang", chance = 120}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -370},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -390, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -320, maxDamage = -460, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -340, length = 3, spread = 0, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
	defense = 69,
	armor = 69,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = -20},
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
