local mType = Game.createMonsterType("Giant Hornet")
local monster = {}
monster.description = "a Giant Hornet"
monster.experience = 8250
monster.outfit = {
	lookType = 953
}

monster.health = 11500
monster.maxHealth = 11500
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
	targetDistance = 4,
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
	{id = 2152, chance = 100000, maxCount = 40}, 
	{id = 8472, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = "black pearl", chance = 22780, maxCount = 2},
	{id = 26781, chance = 9900}, 
	{id = 26784, chance = 15000},
	{id = 26785, chance = 4400},
	{id = 26801, chance = 2100, maxCount = 2},
	{id = 26805, chance = 400},
	{id = "small amethyst", chance = 3370, maxCount = 2}, 
	{id = "blue robe", chance = 1630}, 
	{id = "wand of decay", chance = 4120}, 
	{id = "snakebite rod", chance = 8370}, 
	{id = 26778, chance = 300}, 
	{id = 26810, chance = 220} 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -180, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_POISONDAMAGE, minDamage = -150, maxDamage = -650, range = 7, radius = 5, shootEffect = 55, effect = 195, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -200, maxDamage = -400, length = 8, spread = 3, effect = 196, target = false},
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
	{type = COMBAT_DEATHDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = -8},
	{type = COMBAT_FIREDAMAGE, percent = -3},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 0}
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
