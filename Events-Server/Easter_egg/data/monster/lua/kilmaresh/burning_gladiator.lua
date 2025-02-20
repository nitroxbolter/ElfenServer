local mType = Game.createMonsterType("Burning Gladiator")
local monster = {}

monster.description = "a burning gladiator"
monster.experience = 7350
monster.outfit = {
	lookType = 541,
	lookHead = 95,
	lookBody = 113,
	lookLegs = 3,
	lookFeet = 3,
	lookAddons = 1,
	lookMount = 0
}


monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 26691
monster.speed = 345
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.events = {
	"onDeath_randomTierDrops"
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
	canPushCreatures = false,
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
	{text = "Burn, infidel!", yell = false},
	{text = "Only the Wild Sun shall shine down on this world!", yell = false},
	{text = "Praised be Fafnar, the Smiter!", yell = false}
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 3},
	{id = "fafnar symbol", chance = 6600},
	{id = "dragon necklace", chance = 4700},
	{id = "lightning pendant", chance = 4100},
	{id = "magma amulet", chance = 3700},
	{id = "strange talisman", chance = 3000},
	{id = "magma boots", chance = 2700},
	{id = "elven amulet", chance = 2100},
	{id = "lightning legs", chance = 2000},
	{id = "lightning headband", chance = 1700},
	{id = "lightning boots", chance = 1400},
	{id = "spellweaver's robe", chance = 850},
	{id = "sea horse figurine", chance = 140}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -550},
	{name ="firering", interval = 2000, chance = 10, minDamage = -300, maxDamage = -500, target = false},
	{name ="firex", interval = 2000, chance = 15, minDamage = -300, maxDamage = -500, target = false},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -500, radius = 2, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -500, length = 3, spread = 0, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 89
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
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
