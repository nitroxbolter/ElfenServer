local mType = Game.createMonsterType("Leviathan's Fury")
local monster = {}

monster.description = "a Leviathan's Fury"
monster.experience = 12000
monster.outfit = {
	lookType = 1111,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.runHealth = 5000
monster.corpse = 26691
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "crystal coin", chance = 95000, maxCount = 1},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "great spirit potion", chance = 15000, maxCount = 2},
	{id = "fortune sack", chance = 1300},
	{id = "beastly bounty bag", chance = 900},
	{id = "heart's desire", chance = 800},
	{id = "aurous aquatic jewel", chance = 400},
	{id = "golden mariner", chance = 200},
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -310, maxDamage = -780},
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -370, maxDamage = -700, range = 6, shootEffect = 87, effect = 320, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -320, maxDamage = -750, range = 6, shootEffect = 88, effect = 319, target = true},
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 50},
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
