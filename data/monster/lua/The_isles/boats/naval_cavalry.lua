local mType = Game.createMonsterType("Naval Cavalry")
local monster = {}

monster.description = "a Naval Cavalry"
monster.experience = 6500
monster.outfit = {
	lookType = 1110,
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
monster.runHealth = 2500
monster.corpse = 26691
monster.speed = 400
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
	{id = "platinum coin", chance = 95000, maxCount = 60},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "great spirit potion", chance = 15000, maxCount = 2},
	{id = "sea cavalier standard", chance = 2000},
	{id = "aurous aquatic jewel", chance = 500},
	{id = "heart's desire", chance = 700},
	{id = "fortune sack", chance = 1000},
	{id = "beastly bounty bag", chance = 700},
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -300},
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -400, range = 6, shootEffect = 87, effect = 316, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -220, maxDamage = -450, range = 6, shootEffect = 88, effect = 319, target = true},
	{name = "speed", chance = 15, interval = 2*1000, speed = -700, target = true, duration = 30*1000, effect = 318},
}

monster.defenses = {
	defense = 80,
	armor = 80,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 10},
	{type = COMBAT_MANADRAIN, percent = 10},
	{type = COMBAT_DROWNDAMAGE, percent = 10},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
