local mType = Game.createMonsterType("Mazzinor")
local monster = {}

monster.description = "a mazzinor"
monster.experience = 100000
monster.outfit = {
	lookType = 990,
	lookHead = 85,
	lookBody = 27,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "blood"
monster.corpse = 26691
monster.speed = 500
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 4
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
	staticAttackChance = 98,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "platinum coin", chance = 90000, maxCount = 38},
	{id = "crystal coin", chance = 70000, maxCount = 5},
	{id = "ultimate mana potion", chance = 70000, maxCount = 8},
	{id = "ultimate spirit potion", chance = 70000, maxCount = 4},
	{id = "supreme health potion", chance = 70000, maxCount = 4},
	{id = "berserk potion", chance = 70000, maxCount = 2},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "mastermind potion", chance = 70000, maxCount = 2},
	{id = "onyx chip", chance = 70000, maxCount = 12},
	{id = "small emerald", chance = 70000, maxCount = 12},
	{id = "demon horn", chance = 70000},
	{id = "lightning boots", chance = 70000},
	{id = "Red Gem", chance = 70000},
	{id = "violet gem", chance = 70000},
	{id = "stone skin amulet", chance = 70000},
	{id = "wand of starstorm", chance = 70000},
	{id = "gold token", chance = 30000, maxCount = 4},
	{id = "assassin dagger", chance = 30000},
	{id = "crystalline armor", chance = 30000},
	{id = "dreaded cleaver", chance = 30000},
	{id = "frozen lightning", chance = 30000},
	{id = "wand of dimensions", chance = 10},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 80},
	{name ="divine missile", interval = 2000, chance = 10, minDamage = -335, maxDamage = -900, target = true},
	{name ="berserk", interval = 2000, chance = 20, minDamage = -90, maxDamage = -500, range = 7, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -235, maxDamage = -880, range = 7, radius = 5, effect = CONST_ME_MAGIC_BLUE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -410, maxDamage = -600, length = 8, spread = 3, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -310, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 1},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}


mType:register(monster)
