local mType = Game.createMonsterType("Candy Fairy")
local monster = {}

monster.description = "a Candy Fairy"
monster.experience = 180000
monster.outfit = {
	lookType = 1288,
	lookHead = 81,
	lookBody = 96,
	lookLegs = 104,
	lookFeet = 18,
	lookAddons = 3,
	lookMount = 0
}


monster.health = 250000
monster.maxHealth = 250000
monster.race = "blood"
monster.corpse = 26691
monster.speed = 525

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
	runHealth = 30000,
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
	{text = "Don't trample the beautiful sprinkles! That makes me angry!", yell = false},
	{text = "No sweet sugar jewellery for you, intruder!", yell = false},
	{text = "This is not the Candy Carnival! You should leave!", yell = false},
}

monster.loot = {
	{id = "crystal coin", chance = 100000, maxCount = 25},
	{id = "platinum coin", chance = 75135, maxCount = 45},
	{id = "milk chocolate coin", chance = 24500, maxCount = 4},
	{id = "dark chocolate coin", chance = 24500, maxCount = 6},
	{id = "wafer paper flower", chance = 16500, maxCount = 4},
	{id = "beijinho", chance = 11500, maxCount = 6},
	{id = "pastry dragon", chance = 8800, maxCount = 3},
	{id = "cocoa grimoire", chance = 900},
	{id = "creamy grimoire", chance = 800},
	{id = "candy necklace", chance = 600},
	{id = "churro heart", chance = 3500, maxCount = 4},
	{id = "gummy rotworm", chance = 8000, maxCount = 10},
	{id = "biscuit barrier", chance = 950},
	{id = "gelling", chance = 11000, maxCount = 4},
	{id = 28687, chance = 9000, maxCount = 3},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -850, maxDamage = -2350},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_PHYSICALDAMAGE, minDamage = -550, maxDamage = -2370, length = 8, spread = 3, effect = 328, target = false},
	{name ="combat", interval = 1000, chance = 11, type = COMBAT_ARCANEDAMAGE, minDamage = -470, maxDamage = -3319, length = 8, effect = 333, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -2450, radius = 6, effect = 326, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ARCANEDAMAGE, minDamage = -500, maxDamage = -1300, radius = 6, effect = 330, target = false}
}

monster.defenses = {
	defense = 125,
	armor = 110
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 40},
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
