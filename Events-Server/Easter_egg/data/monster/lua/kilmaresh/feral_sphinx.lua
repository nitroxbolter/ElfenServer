local mType = Game.createMonsterType("Feral Sphinx")
local monster = {}

monster.description = "a feral sphinx"
monster.experience = 8800
monster.outfit = {
	lookType = 1022,
	lookHead = 76,
	lookBody = 75,
	lookLegs = 57,
	lookFeet = 0,
	lookAddons = 2,
	lookMount = 0
}


monster.health = 9800
monster.maxHealth = 9800
monster.race = "blood"
monster.corpse = 26691
monster.speed = 360
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.events = {
	"onDeath_randomTierDrops"
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
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 3},
	{id = "wand of draconia", chance = 4770},
	{id = "sphinx feather", chance = 3450},
	{id = "fire axe", chance = 2650},
	{id = "sphinx tiara", chance = 3450}, 
	{id = "magma legs", chance = 1860},
	{id = "magma monocle", chance = 1590},
	{id = "magma boots", chance = 2120},
	{id = "magma amulet", chance = 7160},
	{id = "wand of inferno", chance = 7690},
	{id = "dragon necklace", chance = 800}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	{name ="fire wave", interval = 2000, chance = 15, minDamage = -350, maxDamage = -500, length = 1, spread = 0, target = true},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -500, radius = 4, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -550, range = 1, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -580, length = 6, spread = 3, effect = CONST_ME_HOLYAREA, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 425, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
