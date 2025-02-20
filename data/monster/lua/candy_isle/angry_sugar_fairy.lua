local mType = Game.createMonsterType("Angry Sugar Fairy")
local monster = {}

monster.description = "a Angry Sugar Fairy"
monster.experience = 9250
monster.outfit = {
	lookType = 1288,
	lookHead = 34,
	lookBody = 25,
	lookLegs = 34,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 13400
monster.maxHealth = 13400
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
	targetDistance = 4,
	runHealth = 1500,
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
	{id = "gold coin", chance = 100000, maxCount = 100},
	{id = "platinum coin", chance = 75135, maxCount = 45},
	{id = "small enchanted emerald", chance = 6650, maxCount = 2},
	{id = "small enchanted sapphire", chance = 6530, maxCount = 4},
	{id = "green crystal splinter", chance = 5960, maxCount = 2},
	{id = "violet crystal shard", chance = 3720, maxCount = 2},
	{id = "wand of cosmic energy", chance = 3190},
	{id = "small enchanted ruby", chance = 3190, maxCount = 2},
	{id = "white pearl", chance = 2600, maxCount = 2},
	{id = "prismatic quartz", chance = 2560, maxCount = 2},
	{id = "milk chocolate coin", chance = 830, maxCount = 2},
	{id = "wafer paper flower", chance = 1390},
	{id = "spellbook of enlightenment", chance = 540},
	{id = "butterfly ring", chance = 800},
	{id = "gold nugget", chance = 350, maxCount = 2},
	{id = "hibiscus dress", chance = 280},
	{id = "ring of healing", chance = 800}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -111, maxDamage = -666},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -550, maxDamage = -1000, length = 5, spread = 3, effect = 204, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -450, radius = 7, effect = 326, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ARCANEDAMAGE, minDamage = -50, maxDamage = -800, range = 7, shootEffect = 5, effect = 330, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_WATERDAMAGE, minDamage = -300, maxDamage = -700, range = 7, radius = 5, shootEffect = 63, effect = 322, target = true}
	
}

monster.defenses = {
	defense = 95,
	armor = 95
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
	{type = COMBAT_ARCANEDAMAGE, percent = 5},
	{type = COMBAT_WATERDAMAGE, percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
