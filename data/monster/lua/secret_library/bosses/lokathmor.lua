local mType = Game.createMonsterType("Lokathmor")
local monster = {}

monster.description = "Lokathmor"
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

monster.summons = {
	{name = "demon blood", chance = 20, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "platinum coin", chance = 90000, maxCount = 63},
	{id = "crystal coin", chance = 70000, maxCount = 4},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "great mana potion", chance = 70000, maxCount = 18},
	{id = "great spirit potion", chance = 70000, maxCount = 18},
	{id = "ultimate mana potion", chance = 70000, maxCount = 12},
	{id = "ultimate health potion", chance = 70000, maxCount = 18},
	{id = "mastermind potion", chance = 70000, maxCount = 2},
	{id = "onyx chip", chance = 70000, maxCount = 12},
	{id = "small emerald", chance = 70000, maxCount = 12},
	{id = "small amethyst", chance = 70000, maxCount = 12},
	{id = "small diamond", chance = 70000, maxCount = 12},
	{id = "small ruby", chance = 70000, maxCount = 12},
	{id = "blue gem", chance = 70000},
	{id = "demon horn", chance = 70000},
	{id = "sturdy book", chance = 15000},
	{id = "demonic essence", chance = 70000},
	{id = 7632, chance = 70000},
	{id = "green gem", chance = 70000},
	{id = "magic sulphur", chance = 70000},
	{id = "stone skin amulet", chance = 70000},
	{id = "silver token", chance = 30000, maxCount = 4},
	{id = "blue robe", chance = 30000},
	{id = "dreaded cleaver", chance = 30000},
	{id = 9814, chance = 30000},
	{id = "wand of inferno", chance = 30000},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 150, attack = 250},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_LIFEDRAIN, minDamage = -1100, maxDamage = -2800, range = 7, radius = 5, shootEffect = CONST_ANI_WHIRLWINDAXE, target = true},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -1900, radius = 9, effect = CONST_ME_MORTAREA, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 5000, chance = 18, minDamage = -1100, maxDamage = -2500, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1000, maxDamage = -255, range = 7, radius = 6, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -90, maxDamage = -200, range = 7, shootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
	defense = 40,
	armor = 40
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}


mType:register(monster)
