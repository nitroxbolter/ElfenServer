local mType = Game.createMonsterType("Bonelich")
local monster = {}

monster.description = "a Bonelich"
monster.experience = 15900
monster.outfit = {
	lookType = 1154,
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
	{id = "platinum coin", chance = 95000, maxCount = 40},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "great spirit potion", chance = 15000, maxCount = 2},
	{id = "fire axe", chance = 4920},
	{id = "titan axe", chance = 3920},
	{id = "chaos mace", chance = 8920},
	{id = "glorious axe", chance = 2920},
	{id = "giant sword", chance = 2520},
	{id = "crystal mace", chance = 2220},
	{id = "crown shield", chance = 1820},
	{id = "jade hammer", chance = 1520},
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -1000},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_PHYSICALDAMAGE, minDamage = -450, maxDamage = -1000, range = 7, radius = 4, shootEffect = 80, effect = 268, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_PHYSICALDAMAGE, minDamage = -550, maxDamage = -900, radius = 4, effect = 260, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = 72, effect = 223, target = true},
}

monster.defenses = {
	defense = 60,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
