local mType = Game.createMonsterType("Coastal Catcher")
local monster = {}

monster.description = "a Coastal Catcher"
monster.experience = 3200
monster.outfit = {
	lookType = 1113,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 2000
monster.maxHealth = 2000
monster.race = "undead"
monster.runHealth = 2000
monster.corpse = 26691
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "gold coin", chance = 95000, maxCount = 10},
	{id = "ham", chance = 55000, maxCount = 3},
	{id = "meat", chance = 55000, maxCount = 3},
	{id = 2240, chance = 55000, maxCount = 3},
	{id = "smoldering stone", chance = 12000, maxCount = 2},
	{id = "ancient script leaf", chance = 3000}
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -75, maxDamage = -150},
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -75, maxDamage = -150, range = 6, shootEffect = 87, effect = 238, target = true},
}

monster.defenses = {
	defense = 40,
	armor = 40,
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
