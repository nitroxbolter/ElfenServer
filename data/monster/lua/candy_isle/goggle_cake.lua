local mType = Game.createMonsterType("Goggle Cake")
local monster = {}

monster.description = "a Goggle Cake"
monster.experience = 6650
monster.outfit = {
	lookType = 1287,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 7100
monster.maxHealth = 7100
monster.race = "blood"
monster.corpse = 26691
monster.speed = 325

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Give me your sweets! They are mine to devour!", yell = false},
	{text = "Hm? Where ... where are you now?", yell = false},
	{text = "Hunger!", yell = false},
}

monster.loot = {
	{id = "gold coin", chance = 100000, maxCount = 100},
	{id = "platinum coin", chance = 75135, maxCount = 25},
	{id = "small enchanted sapphire", chance = 6650, maxCount = 5},
	{id = "combat knife", chance = 6530},
	{id = "great mana potion", chance = 5960},
	{id = "small sapphire", chance = 3720, maxCount = 2},
	{id = "rainbow quartz", chance = 3690, maxCount = 3},
	{id = "spirit cloak", chance = 1790},
	{id = "gummy rotworm", chance = 1760},
	{id = "churro heart", chance = 1560},
	{id = "dark chocolate coin", chance = 910, maxCount = 3},
	{id = "glacier amulet", chance = 980},
	{id = "glacier robe", chance = 540},
	{id = "epee", chance = 580},
	{id = "ice rapier", chance = 350},
	{id = "glacier mask", chance = 380},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -750},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -605, radius = 3, effect = 330, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -375, maxDamage = -800, length = 5, spread = 3, effect = 321, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -775, radius = 3, effect = 328, target = false}
}

monster.defenses = {
	defense = 70,
	armor = 65
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 15},
	{type = COMBAT_ARCANEDAMAGE, percent = 5},
	{type = COMBAT_WATERDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
