local mType = Game.createMonsterType("Mauler")
local monster = {}

monster.description = "a Mauler"
monster.experience = 8500
monster.outfit = {
	lookType = 1121,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 9000
monster.maxHealth = 9000
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
	{id = "platinum coin", chance = 95000, maxCount = 20},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "energy ring", chance = 12050},
	{id = "silver amulet", chance = 15000},
	{id = "draken boots", chance = 600},
	{id = "small sapphire", chance = 5300, maxCount = 3},
	{id = "assassin dagger", chance = 980},
	{id = "assassin star", chance = 26650, maxCount = 5},
	{id = "dragon slayer", chance = 860},
	{id = "dragonbone staff", chance = 4000},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common brelshaza card", chance = 1800},
	{id = "rare brelshaza card", chance = 1000},
	{id = "common vairgrys card", chance = 1800},
	{id = "rare vairgrys card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -490},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -450, shootEffect = CONST_ANI_GREENSTAR, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -120, maxDamage = -425, range = 7, radius = 4, effect = 217, target = true},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -700, length = 5, spread = 3, effect = 39, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
