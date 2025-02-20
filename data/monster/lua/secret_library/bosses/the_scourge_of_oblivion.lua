local mType = Game.createMonsterType("The Scourge Of Oblivion")
local monster = {}

monster.description = "The Scourge Of Oblivion"
monster.experience = 150000
monster.outfit = {
	lookType = 875,
	lookHead = 79,
	lookBody = 79,
	lookLegs = 60,
	lookFeet = 79,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 250000
monster.maxHealth = 250000
monster.race = "venom"
monster.corpse = 26691
monster.speed = 650
monster.manaCost = 0
monster.maxSummons = 4

monster.changeTarget = {
	interval = 2000,
	chance = 25
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "brain squid", chance = 15, interval = 1000, max = 1},
	{name = "animated feather", chance = 15, interval = 1000, max = 1},
	{name = "burning book", chance = 15, interval = 1000, max = 1},
	{name = "ink blob", chance = 15, interval = 1000, max = 1},
	{name = "energetic book", chance = 15, interval = 1000, max = 1},
	{name = "energuardian of tales", chance = 15, interval = 1000, max = 1},
	{name = "icecold book", chance = 15, interval = 1000, max = 1},
	{name = "knowledge elemental", chance = 15, interval = 1000, max = 1},
	{name = "rage squid", chance = 15, interval = 1000, max = 1},
	{name = "squid warden", chance = 15, interval = 1000, max = 1},
	{name = "biting book", chance = 15, interval = 1000, max = 1},
	{name = "floating savant", chance = 15, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I AM DEVOURER!", yell = true}
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 15},
	{id = "crystal coin", chance = 100000, maxCount = 7},
	{id = "green crystal shard", chance = 100000, maxCount = 3},
	{id = "violet crystal shard", chance = 100000, maxCount = 3},
	{id = "spark sphere", chance = 100000},
	{id = "plasmatic lightning", chance = 100000},
	{id = "emerald bangle", chance = 100000},
	{id = "small amethyst", chance = 66666, maxCount = 12},
	{id = "silver token", chance = 66666, maxCount = 12},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "mastermind potion", chance = 66666, maxCount = 10},
	{id = "ultimate mana potion", chance = 66666, maxCount = 6},
	{id = "giant emerald", chance = 66666},
	{id = "red gem", chance = 66666},
	{id = "small ruby", chance = 33333, maxCount = 12},
	{id = "bullseye potion", chance = 33333, maxCount = 10},
	{id = "gold token", chance = 33333, maxCount = 8},
	{id = "supreme health potion", chance = 33333, maxCount = 6},
	{id = "blue crystal shard", chance = 33333, maxCount = 3},
	{id = "giant sapphire", chance = 33333},
	{id = "green gem", chance = 33333},
	{id = 26198, chance = 33333},-- collar of blue plasma
	{id = "huge chunk of crude iron", chance = 33333},
	{id = "magic sulphur", chance = 33333},
	{id = "ring of the sky", chance = 33333},
	{id = "ultimate spirit potion", chance = 15000, maxCount = 20},
	{id = "small diamond", chance = 15000, maxCount = 12},
	{id = "small emerald", chance = 15000, maxCount = 12},
	{id = "rift shield", chance = 5000},
	{id = 7632, chance = 5000},
	{id = 26779, chance = 18500, maxCount = 10},
	{id = 2453, chance = 5000},
	{id = "skullcracker armor", chance = 5000},
	{id = "chaos mace", chance = 5000},
	{id = "cat's paw", chance = 5000},
	{id = "piggy bank", chance = 5000},
	{id = "mysterious remains", chance = 5000},
	{id = "energy bar", chance = 5000},
	{id = "library ticket", chance = 500},
	{id = 8932, chance = 500},
	{id = 29620, chance = 5000}, --- Upgrade Rune v1
	{id = 29621, chance= 3000}, --- Upgrade Rune v2
	{id = 29622, chance = 2500}, --- Upgrade Rune v3
	{id = 29623, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 250, attack = 350},
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_MANADRAIN, minDamage = -900, maxDamage = -1500, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF, target = false},
	{name ="drunk", interval = 2000, chance = 20, radius = 5, effect = CONST_ME_SMALLCLOUDS, target = false, duration = 9000},
	{name ="strength", interval = 1000, chance = 9, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="energy strike", interval = 2000, chance = 30, minDamage = -2000, maxDamage = -2700, range = 1, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_FIREDAMAGE, minDamage = -1550, maxDamage = -2550, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1075, maxDamage = -2405, range = 7, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -1500, radius = 8, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -750, maxDamage = -1200, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="renegade knight", interval = 2000, chance = 30, target = false},
	{name ="choking fear drown", interval = 2000, chance = 20, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -1400, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -800, maxDamage = -2300, radius = 8, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="speed", interval = 1000, chance = 12, speed = -800, radius = 6, effect = CONST_ME_POISONAREA, target = false, duration = 60000},
	{name ="strength", interval = 1000, chance = 8, radius = 5, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -700, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -950, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{name ="combat", interval = 6000, chance = 25, type = COMBAT_HEALING, minDamage = 2000, maxDamage = 5000, effect = 185, target = false},
	{name ="speed", interval = 1000, chance = 8, speed = 1901, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="invisible", interval = 1000, chance = 4, effect = CONST_ME_MAGIC_BLUE},
	{name ="invisible", interval = 1000, chance = 17, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
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
