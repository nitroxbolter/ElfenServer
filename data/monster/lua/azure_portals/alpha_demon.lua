local mType = Game.createMonsterType("Alpha Demon")
local monster = {}
monster.description = "a Alpha Demon"
monster.experience = 10800
monster.outfit = {
	lookType = 962
}

monster.health = 13000
monster.maxHealth = 13000
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

monster.voices = {
}
monster.events = {
	"playerAttackSound"
}
monster.loot = {
	{id = 2152, chance = 100000, maxCount = 65}, 
	{id = 8472, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = "magic plate armor", chance = 300},
	{id = "might ring", chance = 2500},
	{id = "demon shield", chance = 1350},
	{id = "magma coat", chance = 5000},
	{id = 26789, chance = 7500, maxCount = 4}, 
	{id = 26783, chance = 6000, maxCount = 4},
	{id = 26785, chance = 13400, maxCount = 1},
	{id = 26793, chance = 11100, maxCount = 3},
	{id = 26799, chance = 5550, maxCount = 2},
	{id = 26801, chance = 11950, maxCount = 3},
	{id = 26806, chance = 450},
	{id = 26805, chance = 650},
	{id = 26778, chance = 300},  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -520},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -520, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -150, maxDamage = -450, range = 7, radius = 7, shootEffect = 56, effect = 197, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -790, length = 8, spread = 3, effect = 183, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -210, maxDamage = -400, range = 1, shootEffect = 56, target = false},
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 6},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = -14},
	{type = COMBAT_DEATHDAMAGE , percent = -11}
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
