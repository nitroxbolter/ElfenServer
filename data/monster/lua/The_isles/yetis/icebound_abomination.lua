local mType = Game.createMonsterType("Icebound Abomination")
local monster = {}

monster.description = "a Icebound Abomination"
monster.experience = 17800
monster.outfit = {
	lookType = 1164,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 19500
monster.maxHealth = 19500
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
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	targetDistance = 4,
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
	{id = "platinum coin", chance = 95000, maxCount = 20},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "ring of the sky", chance = 4285},
	{id = "thunder hammer", chance = 200},
	{id = "small enchanted emerald", chance = 4003, maxCount = 2},
	{id = "small enchanted ruby", chance = 4000},
	{id = "cluster of solace", chance = 2000},
	{id = "gold token", chance = 1580},
	{id = "gold ingot", chance = 1410},
	{id = "nightmare blade", chance = 1120},
	{id = "eldritch folio", chance = 600},
	{id = "eldritch wand", chance = 300},



}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -750},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -1200, range = 7, radius = 4, shootEffect = 86, effect = 261, target = true},
	{name ="iceboundwave", interval = 2000, chance = 21, minDamage = -600, maxDamage = -800, effect = 202, target = false},
}

monster.defenses = {
	defense = 50,
	armor = 50,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
