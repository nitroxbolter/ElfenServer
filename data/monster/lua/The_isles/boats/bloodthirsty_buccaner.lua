local mType = Game.createMonsterType("Bloodthirsty Buccaneer")
local monster = {}

monster.description = "a Bloodthirsty Buccaneer"
monster.experience = 4500
monster.outfit = {
	lookType = 1112,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 6200
monster.maxHealth = 6200
monster.race = "undead"
monster.runHealth = 2000
monster.corpse = 26691
monster.speed = 350
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
	{id = "platinum coin", chance = 95000, maxCount = 30},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "great spirit potion", chance = 15000, maxCount = 2},
	{id = "ancient script leaf", chance = 5200, maxCount = 2},
	{id = "fortune sack", chance = 1000},
	{id = "pirate's fortune map", chance = 4000},
	{id = "aquatic anchorite", chance = 3200},
	{id = "buccaneer's bauble", chance = 1200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 30, minDamage = -100, maxDamage = -200},
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -170, maxDamage = -300, range = 6, shootEffect = 87, effect = 320, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -220, maxDamage = -350, range = 6, shootEffect = 88, effect = 319, target = true},
}

monster.defenses = {
	defense = 60,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 30},
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
