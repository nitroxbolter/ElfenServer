local mType = Game.createMonsterType("Snallygaster")
local monster = {}

monster.description = "a Snallygaster"
monster.experience = 48500
monster.outfit = {
	lookType = 1258,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 67500
monster.maxHealth = 67500
monster.race = "undead"
monster.corpse = 26691
monster.speed = 450
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canPushCreatures = false,
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
	{id = "crystal coin", chance = 70540},
	{id = "platinum coin", chance = 81920, maxCount = 33},
	{id = 5944, chance = 51920, maxCount = 5},
	{id = 28117, chance = 20000, maxCount = 2},
	{id = 28119, chance = 9000},
	{id = "violet gem", chance = 74560},
	{id = "spellbook of warding", chance = 41920},
	{id = "underworld rod", chance = 31920},
	{id = "springsprout rod", chance = 28920},
	{id = "gold ingot", chance = 54560},
	{id = "glacial rod", chance = 44560},
	{id = 28088, chance = 32220, maxCount = 3},
	{id = 28080, chance = 71920, maxCount = 2},
	{id = 28076, chance = 71920, maxCount = 2},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1490},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1400, maxDamage = -1320, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -1000, maxDamage = -1500, length = 5, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_MANADRAIN, minDamage = -1130, maxDamage = -1200, length = 8, spread = 3, effect = CONST_ME_MAGIC_BLUE, target = false},
	
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 7},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 40},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
