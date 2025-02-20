local mType = Game.createMonsterType("Ghulosh")
local monster = {}

monster.description = "Ghulosh"
monster.experience = 100000
monster.outfit = {
	lookType = 990,
	lookHead = 79,
	lookBody = 94,
	lookLegs = 94,
	lookFeet = 94,
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
	{id = "platinum coin", chance = 90000, maxCount = 53},
	{id = "crystal coin", chance = 90000, maxCount = 12},
	{id = "great spirit potion", chance = 90000, maxCount = 8},
	{id = "supreme health potion", chance = 90000, maxCount = 8},
	{id = "ultimate mana potion", chance = 90000, maxCount = 10},
	{id = "ultimate spirit potion", chance = 90000, maxCount = 8},
	{id = "silver token", chance = 90000, maxCount = 6},
	{id = "bullseye potion", chance = 90000},
	{id = "demon horn", chance = 90000},
	{id = "magic sulphur", chance = 90000},
	{id = "red gem", chance = 90000},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "stone skin amulet", chance = 90000},
	{id = "yellow gem", chance = 90000},
	{id = "wand of voodoo", chance = 90000},
	{id = "mastermind potion", chance = 30000, maxCount = 2},
	{id = "onyx chip", chance = 30000, maxCount = 12},
	{id = "small diamond", chance = 30000, maxCount = 12},
	{id = "small emerald", chance = 30000, maxCount = 12},
	{id = "small ruby", chance = 30000, maxCount = 12},
	{id = "small topaz", chance = 30000, maxCount = 12},
	{id = "blue gem", chance = 30000},
	{id = "solid rage", chance = 30000},
	{id = "gold token", chance = 1000},
	{id = "butcher's axe", chance = 1000},
	{id = "dreaded cleaver", chance = 1000},
	{id = "mercenary sword", chance = 1000},
	{id = 9814, chance = 1000},
	{id = 9820, chance = 1000},
	{id = "epaulette", chance = 500},
	{id = "giant emerald", chance = 500},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, skill = 150, attack = 280},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -900, maxDamage = -1500, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -210, maxDamage = -600, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -210, maxDamage = -600, range = 7, radius = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 250},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_LIFEDRAIN, minDamage = -1500, maxDamage = -2000, range = 7, radius = 3, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}



mType:register(monster)
