local mType = Game.createMonsterType("Branchy Crawler")
local monster = {}

monster.description = "a branchy crawler"
monster.experience = 23400
monster.outfit = {
	lookType = 1045,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 27000
monster.maxHealth = 27000
monster.race = "blood"
monster.corpse = 26691
monster.speed = 435
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
	{text = "Bones are just sticks. They break easily.", yell = false},
	{text = "Decay!", yell = false},
	{text = "I'll make you crawl, too!", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "ultimate health potion", chance = 32220, maxCount = 9},
	{id = "gold ingot", chance = 65560},
	{id = "terra legs", chance = 25560},
	{id = "violet gem", chance = 60000},
	{id = 27333, chance = 35560}, -- crawler's essence
	{id = "green gem", chance = 70000},
	{id = "blue gem", chance = 55000},
	{id = "hammer of wrath", chance = 13500},
	{id = "ruthless axe", chance = 17500},
	{id = 28348, chance = 500},
	{id = "nightmare blade", chance = 9500},
	{id = "twiceslicer", chance = 7500},
	{id = "crystal crossbow", chance = 6500},
	{id = "crystalline sword", chance = 7500},
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -450, maxDamage = -900, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_EARTHDAMAGE, minDamage = -450, maxDamage = -900, radius = 4, effect = CONST_ME_SMALLPLANTS, target = true},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_PHYSICALDAMAGE, minDamage = -450, maxDamage = -1000, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_HOLYDAMAGE, minDamage = -450, maxDamage = -1000, radius = 4, effect = CONST_ME_HOLYDAMAGE, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -600, range = 7, shootEffect = CONST_ANI_PIERCINGBOLT, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="soulroots", interval = 2000, chance = 10, target = true}
}

monster.defenses = {
	defense = 90,
	armor = 105
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = -9},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)