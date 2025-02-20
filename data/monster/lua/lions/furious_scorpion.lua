local mType = Game.createMonsterType("Furious Scorpion")
local monster = {}

monster.description = "a furious scorpion"
monster.experience = 12000
monster.outfit = {
	lookType = 398,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 325
monster.manaCost = 0
monster.maxSummons = 4

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.summon = {
	maxSummons = 4,
	summons = {
		{name = "skeleton elite warrior", chance = 70, interval = 1000, count = 4}
	}
}


monster.loot = {
	{id = "gold coin", chance = 100000, maxCount = 100},
	{id = "dagger", chance = 5052},	
	{id = "sacred tree amulet", chance = 781},
	{id = "gold ingot", chance = 677, maxCount = 1},
	{id = "lightning headband", chance = 469},
	{id = "underworld rod", chance = 469},
	{id = "violet gem", chance = 469},
	{id = "wand of cosmic energy", chance = 469},
	{id = "onyx chip", chance = 417},
	{id = "rainbow quartz", chance = 417},
	{id = "small diamond", chance = 417},
	{id = "wand of inferno", chance = 417},
	{id = "knight armor", chance = 365},
	{id = "lightning pendant", chance = 365},
	{id = "small emerald", chance = 365},
	{id = "focus cape", chance = 313},
	{id = "magma coat", chance = 313},
	{id = 2214, chance = 313}, -- ring of healing
	{id = "wand of starstorm", chance = 313},
	{id = "magma boots", chance = 260},
	{id = "metal spats", chance = 260},
	{id = "warrior's shield", chance = 260},
	{id = 2213, chance = 208}, -- dwarven ring
	{id = "golden mask", chance = 208},
	{id = "terra hood", chance = 208},
	{id = "terra boots", chance = 156},
	{id = "yellow gem", chance = 156},
	{id = "lightning legs", chance = 104},
	{id = "sea horse figurine", chance = 104},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -180, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -175, length = 3, spread = 3, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
	defense = 33,
	armor = 28
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
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
