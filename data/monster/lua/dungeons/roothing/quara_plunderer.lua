local mType = Game.createMonsterType("Quara Plunderer")
local monster = {}

monster.description = "a Quara Plunderer"
monster.experience = 34000
monster.outfit = {
	lookType = 1265,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 27500
monster.maxHealth = 27500
monster.race = "undead"
monster.corpse = 26691
monster.speed = 300
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
	targetDistance = 4,
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
	{id = 28138, chance = 1000},
	{id = 28145, chance = 700},
	{id = 28147, chance = 7000},
	{id = 28148, chance = 3000},
	{id = 28149, chance = 2200},
	{id = "wand of everblazing", chance = 3120},
	{id = "wand of dragonbreath", chance = 2140},
	{id = "wand of draconia", chance = 1370},
	{id = "terra boots", chance = 520},
	{id = "terra hood", chance = 520},
	{id = "terra mantle", chance = 770},
	{id = "terra legs", chance = 520},
	{id = "terra amulet", chance = 3560},
	{id = "lightning pendant", chance = 3520},
	{id = "lightning boots", chance = 410},
	{id = "lightning legs", chance = 530},
	{id = "lightning robe", chance = 710},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -999, maxDamage = -1400, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, totalDamage = 2500, interval = 4000}},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -800, maxDamage = -1280, length = 8, spread = 3, effect = 300, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -900, maxDamage = -1350, radius = 3, effect = 308, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -770, maxDamage = -2000, length = 8, spread = 3, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -650, maxDamage = -1110, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
	{name = "speed", chance = 15, interval = 2*1000, speed = -600, radius = 1, target = true, duration = 30*1000, effect = CONST_ME_MAGIC_RED},
}

monster.defenses = {
	defense = 100,
	armor = 100,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 480, maxDamage = 1500, effect = 185},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -25},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
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
