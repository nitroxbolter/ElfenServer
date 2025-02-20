local mType = Game.createMonsterType("Aberration of the Depths")
local monster = {}
monster.description = "a Aberration of the Depths"
monster.experience = 9280
monster.outfit = {
	lookType = 961
}

monster.health = 11200
monster.maxHealth = 11200
monster.corpse = 26691
monster.speed = 320
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.getLevel = {
	minLevel = 1,
	maxLevel = 10
}
monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	challengeable = true,
	convinceable = false,
	ignoreSpawnBlock = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	runHealth = 900
}

monster.summons = {
}

monster.events = {
	"playerAttackSound"
}

monster.voices = {
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 65}, 
	{id = 8472, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = "silver token", chance = 3140},
	{id = "cluster of solace", chance = 4960},
	{id = "small enchanted amethyst", chance = 3560, maxCount = 5},
	{id = "small enchanted emerald", chance = 3000, maxCount = 5},
	{id = "small enchanted ruby", chance = 2800},
	{id = "assassin star", chance = 8540, maxCount = 7},
	{id = 26781, chance = 7500, maxCount = 4}, 
	{id = 26782, chance = 6000, maxCount = 4},
	{id = 26788, chance = 13400, maxCount = 1},
	{id = 26794, chance = 11100, maxCount = 3},
	{id = 26798, chance = 5550, maxCount = 2},
	{id = 26796, chance = 11950, maxCount = 3},
	{id = 26804, chance = 450},
	{id = 26778, chance = 300},  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -180, maxDamage = -700, length = 7, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -650, length = 7, spread = 3, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -545, range = 1, effect = CONST_ME_MAGIC_RED, target = true}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 17},
	{type = COMBAT_FIREDAMAGE, percent = 6},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 7},
	{type = COMBAT_HOLYDAMAGE , percent = -13},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "fire", combat = true, condition = true},
	{type = "drown", condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getId() == creature:getId() then
	end
end

mType.onDisappear = function(monster, creature)
	if monster:getId() == creature:getId() then
	end
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
	if monster:getId() == creature:getId() then
	end
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
