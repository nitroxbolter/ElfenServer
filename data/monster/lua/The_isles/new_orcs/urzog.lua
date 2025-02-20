local mType = Game.createMonsterType("Urzog")
local monster = {}

monster.description = "a Urzog"
monster.experience = 16500
monster.outfit = {
	lookType = 1129,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 18000
monster.maxHealth = 18000
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
	{id = "platinum coin", chance = 95000, maxCount = 90},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "great spirit potion", chance = 15000, maxCount = 2},
	{id = "magic plate armor", chance = 350},
	{id = "might ring", chance = 1500},
	{id = "mind stone", chance = 2800},
	{id = "stealth ring", chance = 3000},
	{id = "white pearl", chance = 4000, maxCount = 2},
	{id = "black pearl", chance = 4000, maxCount = 3},
	{id = "steel boots", chance = 700},
	{id = "thunder hammer", chance = 500},
	{id = "small diamond", chance = 4500, maxCount = 5},
	{id = "gold ring", chance = 2000},
	{id = "demon shield", chance = 1000},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common agaton card", chance = 1800},
	{id = "rare agaton card", chance = 1000},
	{id = "common lumerus card", chance = 1800},
	{id = "rare lumerus card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900, condition = {type = CONDITION_POISON, totalDamage = 3, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -200, radius = 4, effect = 244, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -155, maxDamage = -350, range = 1, radius = 1, effect = 255, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -200, range = 7, shootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -390, radius = 3, effect = 235, target = false},
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
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
