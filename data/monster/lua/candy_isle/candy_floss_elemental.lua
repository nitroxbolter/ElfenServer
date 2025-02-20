local mType = Game.createMonsterType("Candy Floss Elemental")
local monster = {}

monster.description = "a Candy Floss Elemental"
monster.experience = 8450
monster.outfit = {
	lookType = 1289,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 10200
monster.maxHealth = 10200
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
	{text = "Come into my fluffy embrace!", yell = false},
	{text = "Want fairy floss? I will feed you up.", yell = false},
	{text = "Did you have to come here, little one? I just wanted to lay around and take it easy.", yell = false},
}


monster.loot = {
	{id = "gold coin", chance = 100000, maxCount = 100},
	{id = "platinum coin", chance = 75135, maxCount = 25},
	{id = "energy bar", chance = 4441},
	{id = "opal", chance = 3337},
	{id = "rainbow quartz", chance = 3180, maxCount = 2},
	{id = "gummy rotworm", chance = 3000, maxCount = 2},
	{id = "violet crystal shard", chance = 2510, maxCount = 2},
	{id = "violet gem", chance = 1590},
	{id = "milk chocolate coin", chance = 1100, maxCount = 2},
	{id = "springsprout rod", chance = 610},
	{id = "club ring", chance = 730},
	{id = "silver amulet", chance = 550},
	{id = "mastermind shield", chance = 350},
	{id = "dark chocolate coin", chance = 700, maxCount = 3},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -400},
	{name ="condition", type = CONDITION_SPLASHED, interval = 1000, chance = 7, minDamage = -200, maxDamage = -1000, range = 2, shootEffect = 68, effect = 301, target = false},
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_WATERDAMAGE, minDamage = -150, maxDamage = -450, radius = 6, effect = 232, target = false},
	{name ="combat", interval = 1000, chance = 50, type = COMBAT_ENERGYDAMAGE, minDamage = -120, maxDamage = -700, radius = 5, effect = 234, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -130, maxDamage = -680, length = 8, spread = 3, effect = 215, target = false}
}

monster.defenses = {
	defense = 95,
	armor = 95
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 20},
	{type = COMBAT_ARCANEDAMAGE, percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
