local mType = Game.createMonsterType("Slinkhide")
local monster = {}

monster.description = "a Slinkhide"
monster.experience = 21500
monster.outfit = {
	lookType = 1174,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 20800
monster.maxHealth = 20800
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
	{id = "green crystal shard", chance = 5720},
	{id = "brown crystal splinter", chance = 8610, maxCount = 2},
	{id = "red crystal fragment", chance = 6540},
	{id = "composite hornbow", chance = 910},
	{id = "springsprout rod", chance = 1720},
	{id = "violet gem", chance = 4560},
	{id = "blue gem", chance = 6560},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common kaishuter card", chance = 1800},
	{id = "rare kaishuter card", chance = 1000},
	{id = "common enraged chuo card", chance = 1800},
	{id = "rare enraged chuo card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -750, maxDamage = -900, range = 7, shootEffect = 86, effect = 305, target = true},
	{name ="combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -550, maxDamage = -900, range = 7, shootEffect = 81, effect = 316, target = true},
	{name ="combat", interval = 4000, chance = 24, type = COMBAT_ENERGYDAMAGE, minDamage = -750, maxDamage = -1100, radius = 4, effect = 294, target = false},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -950, radius = 4, effect = 308, target = false},
}

monster.defenses = {
	defense = 75,
	armor = 75,
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
