local mType = Game.createMonsterType("Infernal Demon")
local monster = {}

monster.description = "a infernal demon"
monster.experience = 26000
monster.outfit = {
	lookType = 1057,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 32000
monster.maxHealth = 32000
monster.race = "blood"
monster.corpse = 26691
monster.speed = 500
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
	{text = "The smell of fear follows you.", yell = false},
	{text = "Your soul will burn.", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "platinum coin", chance = 90540, maxCount = 50},
	{id = "ultimate health potion", chance = 32220, maxCount = 7},
	{id = "small diamond", chance = 65560, maxCount = 7},
	{id = "gold ingot", chance = 25560},
	{id = "blue crystal splinter", chance = 25560},
	{id = "cyan crystal fragment", chance = 25560},
	{id = "red crystal fragment", chance = 25560},
	{id = "magma boots", chance = 35500},
	{id = "blue gem", chance = 65560},
	{id = "giant sword", chance = 13500},
	{id = "war axe", chance = 9500},
	{id = 28355, chance = 500},
	{id = "mercenary sword", chance = 11500},
	{id = "green crystal fragment", chance = 9500},
	{id = "onyx chip", chance = 7500},
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1050},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -750, maxDamage = -1000, radius = 4, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -550, maxDamage = -900, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1250, length = 8, effect = CONST_ME_EXPLOSIONHIT, target = false}
}

monster.defenses = {
	defense = 110,
	armor = 120,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 650, maxDamage = 1200, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)