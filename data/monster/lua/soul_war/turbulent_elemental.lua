local mType = Game.createMonsterType("Turbulent Elemental")
local monster = {}

monster.description = "a turbulent elemental"
monster.experience = 29900
monster.outfit = {
	lookType = 1058,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 28000
monster.maxHealth = 28000
monster.race = "blood"
monster.corpse = 26691
monster.speed = 480
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
	chance = 10
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "platinum coin", chance = 90540, maxCount = 50},
	{id = "ultimate health potion", chance = 32220, maxCount = 7},
	{id = "gold ingot", chance = 65560},
	{id = "glacier robe", chance = 25560},
	{id = "violet gem", chance = 25560},
	{id = "blue gem", chance = 45560},
	{id = 28363, chance = 500},
	{id = "wood cape", chance = 16500},
	{id = "northwind rod", chance = 13500},
	{id = "springsprout rod", chance = 11500},
	{id = "sacred tree amulet", chance = 8500},
	{id = "crystalline armor", chance = 4500},
	{id = "rubber cap", chance = 3500},
	{id = "fur armor", chance = 2500},
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -900, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -550, maxDamage = -900, range = 7, shootEffect = CONST_ANI_HUNTINGSPEAR, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 4000, chance = 24, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -1100, radius = 4, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -950, radius = 4, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -800, maxDamage = -1050, length = 5, radius = 2, effect = CONST_ME_GREEN_RINGS, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 105
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
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