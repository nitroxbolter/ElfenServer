local mType = Game.createMonsterType("Furious Elder Bloodjaw")
local monster = {}

monster.description = "a Furious Elder Bloodjaw"
monster.experience = 18500
monster.outfit = {
	lookType = 1075,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 35000
monster.maxHealth = 35000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 410
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
}

monster.getLevel = {
	minLevel = 300,
	maxLevel = 300
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
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{id = "crystal coin", chance = 70540},
	{id = "platinum coin", chance = 81920, maxCount = 33},
	{id = "great mana potion", chance = 71920, maxCount = 5},
	{id = "green gem", chance = 64560},
	{id = "steel boots", chance = 5050},
	{id = "stone skin amulet", chance = 31920},
	{id = "small diamond", chance = 10000, maxCount = 5},
	{id = "small sapphire", chance = 10000, maxCount = 5},
	{id = "small ruby", chance = 12000, maxCount = 5},
	{id = "platinum amulet", chance = 13920},
	{id = "jewelled backpack", chance = 2100},
	{id = "springsprout rod", chance = 14920},
	{id = "vile axe", chance = 7000}, 
	{id = 27443, chance = 18000},
	{id = 27431, chance = 16500},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -490},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -220, maxDamage = -405, range = 7, radius = 1, shootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -65, maxDamage = -135, radius = 4, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="drunk", interval = 2000, chance = 10, radius = 3, effect = CONST_ME_HITBYPOISON, target = false, duration = 5000},
	{name ="blightwalker curse", interval = 2000, chance = 15, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = -250, effect = CONST_ME_MAGIC_RED},
}

monster.defenses = {
	defense = 100,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
