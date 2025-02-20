local mType = Game.createMonsterType("Fire Dracadet [2]")
local monster = {}

monster.description = "a Fire Dracadet [2]"
monster.experience = 0
monster.outfit = {
	lookType = 1362,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 13000
monster.maxHealth = 13000
monster.race = "undead"
monster.corpse = 0
monster.speed = 375
monster.manaCost = 1000
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
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
	hostile = false,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", type= COMBAT_FIREDAMAGE, interval = 2000, chance = 100, minDamage = -150, maxDamage = -280},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -180, maxDamage = -350, range = 7, radius = 4, shootEffect = 84, effect = 276, target = true},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -400, length = 8, spread = 3, effect = 279, target = false}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 75, type = COMBAT_HEALING, minDamage = 500, maxDamage = 600, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
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
