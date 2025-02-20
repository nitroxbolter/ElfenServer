local mType = Game.createMonsterType("Yirkas Blue Scales")
local monster = {}

monster.description = "Yirkas Blue Scales"
monster.experience = 4900
monster.outfit = {
	lookType = 1029,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6300
monster.maxHealth = 6300
monster.race = "blood"
monster.corpse = 26691
monster.speed = 350
monster.manaCost = 0

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

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 16},
	{id = "ultimate health potion", chance = 68000, maxCount = 5},
	{id = "blue goanna scale", chance = 10900},
	{id = "gold ingot", chance = 9800},
	{id = "yirkas' egg", chance = 9000},
	{id = "gemmed figurine", chance = 7900},
	{id = "lizard heart", chance = 4300},
	{id = "blue gem", chance = 4000},
	{id = "green gem", chance = 3800, maxCount = 3},
	{id = "jade hammer", chance = 3800},
	{id = "magma legs", chance = 2700},
	{id = 26187, chance = 156}, -- ring of green plasma
	{id = "skull helmet", chance = 1100},
	{id = "giant sword", chance = 800},
	{id = "assassin dagger", chance = 800},
	{id = "demon shield", chance = 550},
	{id = "mastermind potion", chance = 270},
	{id = "spellweaver's robe", chance = 250},
	{id = "war axe", chance = 1100},
	{id = "alloy legs", chance = 800},
	{id = "demonrage sword", chance = 800},
	{id = "gold ring", chance = 550},
	{id = "spellbook of mind control", chance = 270},
	{id = "magic plate armor", chance = 800},
	{id = "ornate crossbow", chance = 800},
	{id = "red silk flower", chance = 550},
	{id = "raw watermelon tourmaline", chance = 270}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100, condition = {type = CONDITION_POISON, totalDamage = 15, interval = 4000}},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -350, range = 3, radius = 3, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -500, length = 3, spread = 1, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -300, range = 3, radius = 3, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
	defense = 78,
	armor = 78,
	{name = "speed", chance = 15, interval = 2*1000, speed = 450, effect = CONST_ME_MAGIC_RED},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 10},
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

mType.onAppear = function(monster, creature)
end

mType:register(monster)
