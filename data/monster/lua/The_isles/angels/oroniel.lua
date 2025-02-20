local mType = Game.createMonsterType("Oroniel")
local monster = {}

monster.description = "a Oroniel"
monster.experience = 18500
monster.outfit = {
	lookType = 1139,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 18500
monster.maxHealth = 18500
monster.race = "undead"
monster.corpse = 26691
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 20,
	health = 10,
	damage = 50,
	random = 20,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
}

monster.voices = {
}

monster.loot = {
	{id = "platinum coin", chance = 95000, maxCount = 49},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "Ice Rapier", chance = 4500},
	{id = "Glacier Mask", chance = 3000},
	{id = "Crystal Sword", chance = 1300},
	{id = "Glacier Robe", chance = 2500},
	{id = "Glacier Kilt", chance = 1180},
	{id = "Magma Boots", chance = 3600},
	{id = "Lightning Pendant", chance = 3500},
	{id = "Lightning Headband", chance = 3100},
	{id = "titan axe", chance = 2200},
	{id = "shadow sceptre", chance = 640},
	{id = "glorious axe", chance = 2400},
	{id = "common erasmo card", chance = 1800},
	{id = "rare erasmo card", chance = 1000},
	{id = "common demetar card", chance = 1800},
	{id = "rare demetar card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -750, length = 6, spread = 3, effect = 213, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -150, maxDamage = -950, range = 5, radius = 3, shootEffect = 71, effect = 201, target = true},
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -600, radius = 3, effect = 218, target = false}
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 85},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
