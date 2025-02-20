local mType = Game.createMonsterType("Angry Converter")
local monster = {}

monster.description = "a Angry Converter"
monster.experience = 20600
monster.outfit = {
	lookType = 1070,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 29600
monster.maxHealth = 29600
monster.race = "undead"
monster.corpse = 0
monster.speed = 450
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
	minLevel = 100,
	maxLevel = 100
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
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -950},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -700, range = 7, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -900, radius = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -900, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 24, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -1000, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -1150, length = 8, effect = CONST_ME_EXPLOSIONHIT, target = false},
}

monster.defenses = {
	defense = 100,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 35},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
