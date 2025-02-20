local mType = Game.createMonsterType("Enhanced Frosty Book")
local monster = {}

monster.description = "an Enhanced Frosty Book"
monster.experience = 20000
monster.outfit = {
	lookType = 989,
	lookHead = 87,
	lookBody = 85,
	lookLegs = 79,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 550
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
}
monster.events = {
	"playerAttackSound"
}
monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "Platinum Coin", chance = 100000, maxCount = 8},
	{id = "Book Page", chance = 100000, maxCount = 3},
	{id = "Small Diamond", chance = 100000, maxCount = 8},
	{id = "Small Sapphire", chance = 100000, maxCount = 8},
	{id = "Quill", chance = 100000, maxCount = 8},
	{id = "Ultimate Health Potion", chance = 100000, maxCount = 8},
	{id = "Ultimate Mana Potion", chance = 100000, maxCount = 8},
	{id = "Diamond Sceptre", chance = 100000},
	{id = "Frosty Heart", chance = 100000, maxCount = 8},
	{id = "Glacier Mask", chance = 350},
	{id = "Ice Rapier", chance = 250},
	{id = "Silken Bookmark", chance = 100000, maxCount = 8},
	{id = "Crystal Mace", chance = 6250},
	{id = "Glacier Kilt", chance = 9250},
	{id = "Glacier Robe", chance = 8250},
	{id = "Leviathan's Amulet", chance = 7550},
	{id = "Glacier Shoes", chance = 11350},
	{id = "Strange Helmet", chance = 10000},
	{id = "Sapphire Hammer", chance = 3300},
	{id = 7441, chance = 100000},
	{id = "Glacial Rod", chance = 850},
	{id = "Crystalline Armor", chance = 1250}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -950, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -980, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -350, maxDamage = -1080, length = 5, spread = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -230, maxDamage = -1280, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 80
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
