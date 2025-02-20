local mType = Game.createMonsterType("Mould Phantom")
local monster = {}

monster.description = "a mould phantom"
monster.experience = 23920
monster.outfit = {
	lookType = 1046,
	lookHead = 106,
	lookBody = 60,
	lookLegs = 131,
	lookFeet = 116,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 28000
monster.maxHealth = 28000
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
	{text = "Everything decomposes.", yell = false},
	{text = "I love the smell of rotten flesh.", yell = false},
	{text = "The earth will take you back.", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "gold ingot", chance = 54560},
	{id = "violet gem", chance = 74560},
	{id = "green gem", chance = 64560},
	{id = "blue gem", chance = 54560},
	{id = 28359, chance = 500},
	{id = "wand of starstorm", chance = 31920},
	{id = "wand of voodoo", chance = 21920},
	{id = "ornate crossbow", chance = 41920},
	{id = "wand of defiance", chance = 21920, maxCount = 3},
	{id = 26185, chance = 28920}, -- ring of blue plasma
	{id = 26182, chance = 28920}, -- collar of blue plasma
	{id = 27357, chance = 12920}, -- mould heart
	{id = 27364, chance = 9920}, -- mould robe
	{id = "crystal crossbow", chance = 1920},
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -650, maxDamage = -1000, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -650, maxDamage = -1000, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_SMALLPLANTS, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -800, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true}
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