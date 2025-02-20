local mType = Game.createMonsterType("Usurper Warlock")
local monster = {}

monster.description = "a usurper warlock"
monster.experience = 7000
monster.outfit = {
	lookType = 1060,
	lookHead = 57,
	lookBody = 2,
	lookLegs = 21,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7500
monster.maxHealth = 7500
monster.race = "blood"
monster.corpse = 26691
monster.speed = 365


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
	staticAttackChance = 70,
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
	{text = "This town is ours now!", yell = false},
	{text = "You don't deserv Bounac!", yell = false},
	{text = "My power is fueled by a just cause!", yell = false},
	{text = "This will be the last thing you witness!", yell = false},
	{text = "Change of guard! High time ...!", yell = false},
	{text = "Do you really think you can stand?", yell = false},
	{text = "'Holding breath'", yell = false},
	{text = "Die in the flames of true righteousness.", yell = false}
}

monster.loot = {
	{id = "platinum coin", chance = 77111, maxCount = 4},
	{id = "gold ingot", chance = 11778},
	{id = "lion cloak patch", chance = 8444},
	{id = "lion crest", chance = 8222},
	{id = "black pearl", chance = 5778},
	{id = 7633, chance = 5556}, -- giant shimmering pearl (green)
	{id = "terra hood", chance = 4667},
	{id = "lightning headband", chance = 3778},
	{id = "green gem", chance = 3556},
	{id = "springsprout rod", chance = 2667},
	{id = 2671, chance = 2444}, -- ham
	{id = "magma monocle", chance = 1778},
	{id = "wand of cosmic energy", chance = 1778},
	{id = "underworld rod", chance = 1333},
	{id = "knight legs", chance = 1111},
	{id = "wand of starstorm", chance = 667}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 4000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -450, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true} -- avalanche
}

monster.defenses = {
	defense = 50,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 32},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
