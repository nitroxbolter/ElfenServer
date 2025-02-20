local mType = Game.createMonsterType("Cloak Of Terror")
local monster = {}

monster.description = "a cloak of terror"
monster.experience = 24960
monster.outfit = {
	lookType = 1043,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 28000
monster.maxHealth = 28000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 425
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	staticAttackChance = 90,
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
	{text = "Power up!", yell = false},
	{text = "Shocked to meet you.", yell = false},
	{text = "You should be more positive!", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "ultimate health potion", chance = 32220, maxCount = 7},
	{id = "wand of starstorm", chance = 74560},
	{id = 27324, chance = 55400}, -- telescope eye
	{id = "violet gem", chance = 74560},
	{id = 28350, chance = 500},
	{id = "lightning headband", chance = 11920},
	{id = "green gem", chance = 64560},
	{id = "blue gem", chance = 54560},
	{id = "wand of inferno", chance = 11920},
	{id = "wand of voodoo", chance = 21920},
	{id = "wand of defiance", chance = 10000, maxCount = 3},
	{id = 27325, chance = 4500}, -- crown
	{id = 27341, chance = 850}, -- brooch of embracement
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
	{name ="combat", interval = 4000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -750, radius = 4, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SPECTRALBOLT, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 2000, chance = 24, type = COMBAT_HOLYDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_GROUNDSHAKER, target = true}
}

monster.defenses = {
	defense = 90,
	armor = 107
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)