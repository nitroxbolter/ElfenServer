local mType = Game.createMonsterType("Infernal Phantom")
local monster = {}

monster.description = "a infernal phantom"
monster.experience = 22880
monster.outfit = {
	lookType = 1046,
	lookHead = 114,
	lookBody = 80,
	lookLegs = 94,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 26000
monster.maxHealth = 26000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 400
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
	{text = "Ashes to ashes.", yell = false},
	{text = "Burn, baby! Burn!", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "platinum coin", chance = 82220, maxCount = 32},
	{id = "terra rod", chance = 21920},
	{id = "ultimate health potion", chance = 32220, maxCount = 7},
	{id = "hailstorm rod", chance = 71920},
	{id = "fire axe", chance = 18920},
	{id = "titan axe", chance = 18920},
	{id = 28356, chance = 500},
	{id = "chaos mace", chance = 12920},
	{id = "glorious axe", chance = 22920},
	{id = "underworld rod", chance = 32920},
	{id = "springsprout rod", chance = 36920},
	{id = "wand of starstorm", chance = 36920},
	{id = "wand of voodoo", chance = 24920},
	{id = "warrior's axe", chance = 17920},
	{id = 27355, chance = 11560}, -- infernal heart
	{id = 27362, chance = 7560}, -- infernal robe
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="combat", interval = 3000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -550, maxDamage = -1000, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -650, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -1100, radius = 4, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1250, length = 6, effect = CONST_ME_EXPLOSIONHIT, target = false},
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 1},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)