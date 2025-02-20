local mType = Game.createMonsterType("Grimbone")
local monster = {}

monster.description = "a Grimbone"
monster.experience = 19500
monster.outfit = {
	lookType = 1151,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 21000
monster.maxHealth = 21000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 10,
	health = 10,
	damage = 60,
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
	{id = "platinum coin", chance = 95000, maxCount = 40},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "great spirit potion", chance = 15000, maxCount = 2},
	{id = "silver amulet", chance = 9000},
	{id = "wand of voodoo", chance = 3050},
	{id = "hailstorm rod", chance = 3550},
	{id = "elven amulet", chance = 1800},
	{id = "garlic necklace", chance = 2640},
	{id = "platinum amulet", chance = 2600},
	{id = "gold ingot", chance = 3560},
	{id = "violet gem", chance = 7560},
	{id = "wood cape", chance = 7920},
	{id = "ornate crossbow", chance = 1420},
	{id = "emerald bangle", chance = 1340},
	{id = "lightning boots", chance = 1340},
	{id = "diamond", chance = 3500},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common velganos card", chance = 1800},
	{id = "rare velganos card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 110, attack = 150, condition = {type = CONDITION_POISON, totalDamage = 2260, interval = 4000}},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -365, maxDamage = -805, range = 5, shootEffect = CONST_ANI_GREENSTAR, effect = CONST_ME_POISONAREA, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 17, minDamage = -500, maxDamage = -950, radius = 4, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 80, maxDamage = 250, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 620, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
