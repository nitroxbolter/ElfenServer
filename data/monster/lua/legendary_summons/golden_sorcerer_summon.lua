local mType = Game.createMonsterType("Thaemine")
local monster = {}

monster.description = "a Thaemine"
monster.experience = 0
monster.outfit = {
	lookType = 1106,
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
monster.corpse = 0
monster.speed = 550

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
	convinceable = false,
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
	familiar = true
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
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -90, maxDamage = -350, length = 2, spread = 0, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -190, maxDamage = -410, length = 2, spread = 0, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="summon challenge", interval = 2000, chance = 40, target = false}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 3000, chance = 10, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 1000, effect = 185, target = false},
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
