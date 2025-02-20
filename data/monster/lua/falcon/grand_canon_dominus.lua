local mType = Game.createMonsterType("Grand Canon Dominus")
local monster = {}

monster.description = "Grand Canon Dominus"
monster.experience = 11000
monster.outfit = {
	lookType = 1001,
	lookHead = 57,
	lookBody = 96,
	lookLegs = 96,
	lookFeet = 105,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 400
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
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 5},
	{id = "great health potion", chance = 100000, maxCount = 3},
	{id = "assassin star", chance = 100000, maxCount = 2},
	{id = "small amethyst", chance = 100000, maxCount = 2},
	{id = "golden armor", chance = 1700},
	{id = "mastermind shield", chance = 1100},
	{id = "patch of fine cloth", chance = 1000},
	{id= 2156, chance = 1800}, -- red gem
	{id = "violet gem", chance = 1850},
	{id = "falcon bow", chance = 180},
	{id = "falcon wand", chance = 180},
	{id = "falcon plate", chance = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -720, range = 7, shootEffect = CONST_ANI_ETHEREALSPEAR, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -700, range = 5, radius = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -700, range = 5, radius = 3, effect = CONST_ME_SMALLCLOUDS, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 82,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 550, effect = 185, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = 650, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
