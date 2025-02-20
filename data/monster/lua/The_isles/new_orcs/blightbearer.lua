local mType = Game.createMonsterType("Blightbearer")
local monster = {}

monster.description = "a Blightbearer"
monster.experience = 17200
monster.outfit = {
	lookType = 1130,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 19000
monster.maxHealth = 19000
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
	{id = "platinum coin", chance = 95000, maxCount = 30},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "great spirit potion", chance = 15000, maxCount = 2},
	{id = "assassin star", chance = 13000, maxCount = 35},
	{id = "demonbone", chance = 650},
	{id = "royal crossbow", chance = 400},
	{id = "giant sword", chance = 1000},
	{id = "golden legs", chance = 600},
	{id = "life crystal", chance = 9000},
	{id = "mastermind shield", chance = 350},
	{id = "dragon robe", chance = 800},
	{id = "molten plate", chance = 150},
	{id = "great shield", chance = 50},
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
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1050},
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -710, range = 7, radius = 7, shootEffect = 70, effect = 187, target = true},
	{name ="combat", interval = 1800, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -880, range = 7, radius = 5, effect = 208, target = false},
	{name ="combat", interval = 3000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -1150, length = 8, spread = 3, effect = 199, target = false},
	{name ="combat", interval = 2500, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -680, range = 7, radius = 5, effect = 197, target = false},
}

monster.defenses = {
	defense = 110,
	armor = 110,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
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
