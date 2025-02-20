local mType = Game.createMonsterType("Archon")
local monster = {}

monster.description = "a Archon"
monster.experience = 17000
monster.outfit = {
	lookType = 1141,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 17000
monster.maxHealth = 17000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 20,
	health = 10,
	damage = 50,
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
	{id = "platinum coin", chance = 95000, maxCount = 49},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "fire sword", chance = 1240},
	{id = "crown shield", chance = 1700},
	{id = "tower shield", chance = 550},
	{id = "brown mushroom", chance = 14000, maxCount = 2},
	{id = "beastslayer axe", chance = 3260},
	{id = "mercenary sword", chance = 2500},
	{id = "spiked squelcher", chance = 410},
	{id = "underworld rod", chance = 1800},
	{id = "wand of starstorm", chance = 960},
	{id = "common erasmo card", chance = 1800},
	{id = "rare erasmo card", chance = 1000},
	{id = "common demetar card", chance = 1800},
	{id = "rare demetar card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -900},
	{name ="drunk", interval = 2000, chance = 10, length = 4, spread = 3, effect = CONST_ME_MAGIC_GREEN, target = true, duration = 5000},
	{name = "speed", chance = 15, interval = 2*1000, speed = -700, radius = 2, target = true, duration = 30*1000, effect = 238},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -1000, radius = 4, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -700, radius = 1, shootEffect = 229, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -280, maxDamage = -750, radius = 1, shootEffect = 84, effect = 226, target = true}
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
