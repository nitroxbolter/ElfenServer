local mType = Game.createMonsterType("Rootthing Bug Tracker")
local monster = {}

monster.description = "a Rootthing Bug Tracker"
monster.experience = 36300
monster.outfit = {
	lookType = 1269,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 47000
monster.maxHealth = 47000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 425
monster.manaCost = 0

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


}

monster.loot = {
	{id = "crystal coin", chance = 70540, maxCount = 2},
	{id = "platinum coin", chance = 81920, maxCount = 25},
	{id = 28080, chance = 71920, maxCount = 2},
	{id = 28076, chance = 71920, maxCount = 2},
	{id = 28088, chance = 71920, maxCount = 2},
	{id = 28141, chance = 11000, maxCount = 2},
	{id = 28143, chance = 2000},
	{id = 28144, chance = 1100},
	{id = 28146, chance = 4100},
	{id = 28148, chance = 1200},
	{id = 28149, chance = 1600},
	{id = "angelic axe", chance = 1920},
	{id = "mushroom backpack", chance = 720},
	{id = "mycological bow", chance = 440},
	{id = "muck rod", chance = 640},
	{id = "small emerald", chance = 9950, maxCount = 2},
	{id = "crown armor", chance = 950},
	{id = "skull staff", chance = 1400},
	{id = "phoenix shield", chance = 160},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -1415},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -600, maxDamage = -1415, range = 7, shootEffect = 57, effect = 8, target = true},
	{name ="combat", interval = 2000, chance = 11, type = COMBAT_MANADRAIN, minDamage = -820, maxDamage = -1215, range = 7, shootEffect = 60, effect = 208, target = true},
	{name = "speed", chance = 15, interval = 2*1000, speed = -600, radius = 1, target = true, duration = 30*1000, effect = CONST_ME_MAGIC_RED},
}

monster.defenses = {
	defense = 81,
	armor = 81
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
