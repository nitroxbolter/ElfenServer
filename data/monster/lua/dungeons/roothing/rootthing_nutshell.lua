local mType = Game.createMonsterType("Rootthing Nutshell")
local monster = {}

monster.description = "a Rootthing Nutshell"
monster.experience = 38900
monster.outfit = {
	lookType = 1267,
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
	{id = "knight axe", chance = 7000},
	{id = "ravager's axe", chance = 300},
	{id = "yellow gem", chance = 5000},
	{id = "boots of haste", chance = 1500},
	{id = "small amethyst", chance = 7000, maxCount = 3},
	{id = "violet gem", chance = 500},
	{id = "twin axe", chance = 200},
	{id = "djinn blade", chance = 200},
	{id = "crystal mace", chance = 500},
	{id = "blue robe", chance = 2500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -900, maxDamage = -1450},
	{name ="condition", type = CONDITION_BLEEDING, interval = 3000, chance = 11, minDamage = -600, maxDamage = -1300, radius = 6, shootEffect = 71, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1415, range = 7, shootEffect = 86, effect = 256, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1315, range = 7, shootEffect = 85, effect = 246, target = true},
}

monster.defenses = {
	defense = 90,
	armor = 95
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 32},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
