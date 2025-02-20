local mType = Game.createMonsterType("Gazer Spectre")
local monster = {}

monster.description = "a Gazer Spectre"
monster.experience = 4200
monster.outfit = {
	lookType = 1068,
	lookHead = 94,
	lookBody = 21,
	lookLegs = 77,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 26691
monster.speed = 395
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
	{text = "Deathhh... is... a.... doooor!!", yell = false},
	{text = "Tiiimeee... is... a... windowww!", yell = false}
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 5},
	{id = "brown crystal splinter", chance = 900},
	{id = "red crystal fragment", chance = 8500},
	{id = "small enchanted ruby", chance = 7500},
	{id = "small diamond", chance = 6000},
	{id = "small sapphire", chance = 5000},
	{id = 2156, chance = 4000}, -- red gem
	{id = "yellow gem", chance = 3000},
	{id = "wand of draconia", chance = 3500},
	{id = "wand of inferno", chance = 1100},
	{id = "magma coat", chance = 900},
	{id = "prismatic quartz", chance = 1500},
	{id = "small enchanted emerald", chance = 800},
	{id = "onyx chip", chance = 770},
	{id = "hexagonal ruby", chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -350},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -350, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -350, radius = 3, effect = CONST_ME_FIREATTACK, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -400, length = 4, spread = 3, effect = CONST_ME_YELLOWENERGY, target = false}
}

monster.defenses = {
	defense = 78,
	armor = 78,
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = 185, target = false}
}


monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 85},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 70},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -30},
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
