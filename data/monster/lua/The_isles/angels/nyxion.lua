local mType = Game.createMonsterType("Nyxion")
local monster = {}

monster.description = "a Nyxion"
monster.experience = 29900
monster.outfit = {
	lookType = 1143,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 30000
monster.maxHealth = 30000
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
	{id = "small amethyst", chance = 9000, maxCount = 3},
	{id = "small diamond", chance = 9000, maxCount = 3},
	{id = "small emerald", chance = 9000, maxCount = 2},
	{id = "small ruby", chance = 9000, maxCount = 2},
	{id = "small topaz", chance = 9000, maxCount = 2},
	{id = "chaos mace", chance = 2100},
	{id = "crown armor", chance = 1000},
	{id = "dreaded cleaver", chance = 3000},
	{id = "gold token", chance = 1000, maxCount = 1},
	{id = "green gem", chance = 2200},
	{id = "muck rod", chance = 1200},
	{id = "red gem", chance = 4000},
	{id = "silver Token", chance = 1000, maxCount = 1},
	{id = "spellbook of warding", chance = 1700},
	{id = "steel boots", chance = 300},
	{id = "stone skin amulet", chance = 8000},
	{id = "wand of cosmic Energy", chance = 5000},
	{id = "yellow gem", chance = 3000},
	{id = "giant sapphire", chance = 1000},
	{id = "giant ruby", chance = 1000},
	{id = "common erasmo card", chance = 1800},
	{id = "rare erasmo card", chance = 1000},
	{id = "common demetar card", chance = 1800},
	{id = "rare demetar card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 6000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -950, length = 8, spread = 3, effect = 259, target = false},
	{name ="combat", interval = 2750, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = 229, target = false},
	{name ="combat", interval = 2500, chance = 22, type = COMBAT_EARTHDAMAGE, minDamage = -600, maxDamage = -800, radius = 3, effect = 199, target = false},
	{name ="combat", interval = 3300, chance = 24, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -1300, length = 4, spread = 0, effect = 205, target = false},
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
