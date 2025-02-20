local mType = Game.createMonsterType("Sugar Mommy")
local monster = {}

monster.description = "a Sugar Mommy"
monster.experience = 145000
monster.outfit = {
	lookType = 1298,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 2,
	lookMount = 0
}


monster.health = 220000
monster.maxHealth = 220000
monster.race = "blood"
monster.corpse = 26691
monster.speed = 325

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
	targetDistance = 3,
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
	{text = "SUGAR!!!", yell = false},
	{text = "Sweet vengeance!", yell = false},
	{text = "Let me have a bite!", yell = false},
	{text = "YOU HAVE BAD BREATH, TAKE A MINT!!!", yell = false},
	{text = "I LOOOOOOVE CHOCOLATE TRUFFLES!!!", yell = false},
	{text = "Yummy!", yell = false},
}

monster.loot = {
	{id = "crystal coin", chance = 100000, maxCount = 12},
	{id = "platinum coin", chance = 75135, maxCount = 45},
	{id = "milk chocolate coin", chance = 24500, maxCount = 4},
	{id = "dark chocolate coin", chance = 24500, maxCount = 5},
	{id = "wafer paper flower", chance = 16500, maxCount = 2},
	{id = "pastry dragon", chance = 8800, maxCount = 2},
	{id = "peppermint backpack", chance = 1250},
	{id = "yellow gem", chance = 2950},
	{id = "red gem", chance = 3200, maxCount = 2},
	{id = "gelling", chance = 11000, maxCount = 2},
	{id = 28687, chance = 9000, maxCount = 3},
	{id = "green gem", chance = 4500},
	{id = "rainbow quartz", chance = 8000, maxCount = 3},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -2200},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ARCANEDAMAGE, minDamage = -410, maxDamage = -1295, range = 5, radius = 5, effect = 327, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_WATERDAMAGE, minDamage = -1010, maxDamage = -1995, length = 9, spread = 3, effect = 323, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -410, maxDamage = -595, radius = 7, effect = 235, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -780, radius = 6, effect = 263, target = false}
}

monster.defenses = {
	defense = 120,
	armor = 120
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -10},
	{type = COMBAT_ARCANEDAMAGE, percent = 20},
	{type = COMBAT_WATERDAMAGE, percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
