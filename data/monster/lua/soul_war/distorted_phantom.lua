local mType = Game.createMonsterType("Distorted Phantom")
local monster = {}

monster.description = "a distorted phantom"
monster.experience = 28600
monster.outfit = {
	lookType = 1046,
	lookHead = 113,
	lookBody = 94,
	lookLegs = 132,
	lookFeet = 76,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 26000
monster.maxHealth = 26000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 440
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
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
	{text = "I'm not here. I am there.", yell = false},
	{text = "The night is coming for you.", yell = false},
	{text = "Too late... No turning back now.", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "platinum coin", chance = 81920, maxCount = 33},
	{id = "great spirit potion", chance = 51920, maxCount = 8},
	{id = "violet gem", chance = 74560},
	{id = "spellbook of warding", chance = 41920},
	{id = "underworld rod", chance = 31920},
	{id = "springsprout rod", chance = 28920},
	{id = 28352, chance = 500},
	{id = "gold ingot", chance = 54560},
	{id = "glacial rod", chance = 44560},
	{id = 26185, chance = 28920}, -- ring of blue plasma
	{id = 26187, chance = 28920}, -- ring of green plasma
	{id = 26189, chance = 28920}, -- ring of red plasma
	{id = 27358, chance = 18920}, -- distorted heart
	{id = 27365, chance = 11920}, -- distorted robe
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_FLASHARROW, effect = CONST_ME_GROUNDSHAKER, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -700, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -900, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO, target = true}
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
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
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)