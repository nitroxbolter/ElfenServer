local mType = Game.createMonsterType("Grand Master Oberon")
local monster = {}

monster.description = "Grand Master Oberon"
monster.experience = 20000
monster.outfit = {
	lookType = 1002,
	lookHead = 21,
	lookBody = 96,
	lookLegs = 21,
	lookFeet = 105,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 450
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
	{id = 2230, chance = 30000, maxCount = 1}, -- bone
	{id = "brass shield", chance = 30000, maxCount = 1},
	{id = "viking helmet", chance = 23000, maxCount = 1},
	{id = "falcon battleaxe", chance = 500, maxCount = 1},
	{id = "falcon longsword", chance = 500, maxCount = 1},
	{id = "falcon mace", chance = 500, maxCount = 1},
	{id = "grant of arms", chance = 500, maxCount = 1},
	{id = "falcon bow", chance = 350, maxCount = 1},
	{id = "falcon circlet", chance = 350, maxCount = 1},
	{id = "falcon coif", chance = 350, maxCount = 1},
	{id = "falcon rod", chance = 350, maxCount = 1},
	{id = "falcon wand", chance = 350, maxCount = 1},
	{id = "falcon shield", chance = 200, maxCount = 1},
	{id = "falcon greaves", chance = 200, maxCount = 1},
	{id = "falcon plate", chance = 200, maxCount = 1},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1200},
	{name ="combat", interval = 6000, chance = 80, type = COMBAT_HOLYDAMAGE, minDamage = -1000, maxDamage = -2250, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -820, maxDamage = -1450, radius = 5, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -860, maxDamage = -1500, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 82,
	{name = "speed", chance = 15, interval = 2*1000, speed = 650, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
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
