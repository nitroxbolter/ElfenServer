local mType = Game.createMonsterType("Black Dragon")
local monster = {}
monster.description = "a Black Dragon"
monster.experience = 9200
monster.outfit = {
	lookType = 963
}

monster.health = 9800
monster.maxHealth = 9800
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
	{id = "nightmare blade", chance = 3500},
	{id = "demonrage sword", chance = 2800},
	{id = "dreaded cleaver", chance = 2000},
	{id = 26781, chance = 8500, maxCount = 4}, 
	{id = 26784, chance = 10000, maxCount = 8},
	{id = 26787, chance = 17400, maxCount = 3},
	{id = 26795, chance = 10000, maxCount = 2},
	{id = 26798, chance = 6550, maxCount = 2},
	{id = 26791, chance = 11950, maxCount = 3},
	{id = 26811, chance = 450},
	{id = 26778, chance = 300},  
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, minDamage = -180, maxDamage = -330},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -180, maxDamage = -630, length = 4, spread = 3, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -550, radius = 3, effect = 200, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -270, maxDamage = -420, radius = 3, effect = 195, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -250, maxDamage = -350, length = 4, spread = 3, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 11},
	{type = COMBAT_FIREDAMAGE, percent = 8},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -11},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
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
