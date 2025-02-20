local mType = Game.createMonsterType("Werelioness")
local monster = {}

monster.description = "a werelioness"
monster.experience = 2500
monster.outfit = {
	lookType = 1049,
	lookHead = 0,
	lookBody = 2,
	lookLegs = 0,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 3000
monster.maxHealth = 3000
monster.race = "blood"
monster.corpse = 26691
monster.speed = 310
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
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
	runHealth = 5,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 1,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 5},
	{id = "gold coin", chance = 100000, maxCount = 60},
	{id = "small enchanted sapphire", chance = 5000, maxCount = 2},
	{id = "black pearl", chance = 5000, maxCount = 2},
	{id = 2671, chance = 5000, maxCount = 2},
	{id = "meat", chance = 5000, maxCount = 2},
	{id = "soul orb", chance = 5000, maxCount = 2},
	{id = "white pearl", chance = 1500, maxCount = 2},
	{id = "ankh", chance = 5000},
	{id = "crystal sword", chance = 5000},
	{id = "serpent sword", chance = 5000},
	{id = "rapier", chance = 5000},
	{id = "lion's mane", chance = 5000},
	{id = "lightning headband", chance = 1500},
	{id = "steel helmet", chance = 1500},
	{id = "doublet", chance = 1500},
	{id = "ivory carving", chance = 1500},
	{id = "magma legs", chance = 500},
	{id = "crown helmet", chance = 500},
	{id = "white silk flower", chance = 200},
	{id = "lion figurine", chance = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -410, range = 3, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -170, maxDamage = -350, range = 3, shootEffect = CONST_ANI_HOLY, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -300, length = 4, spread = 1, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
