local mType = Game.createMonsterType("Bone Ruthless")
local monster = {}
monster.description = "a Bone Ruthless"
monster.experience = 5600
monster.outfit = {
	lookType = 948
}

monster.health = 5350
monster.maxHealth = 5350
monster.corpse = 26691
monster.speed = 280
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4*1000,
	chance = 20
}


monster.getLevel = {
	minLevel = 1,
	maxLevel = 50
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
	staticAttackChance = 90
}
monster.events = {
	"playerAttackSound"
}
monster.summons = {
}

monster.voices = {
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100}, -- gold coin
	{id = 2152, chance = 100000, maxCount = 6}, -- platinum coin
	{id = 8472, chance = 11400, maxCount = 2}, -- great spirit potion
	{id = 7590, chance = 10300, maxCount = 2}, -- great mana potion
	{id = 7591, chance = 9700, maxCount = 2}, -- great health potion
	{id = "small topaz", chance = 4000, maxCount = 3},
	{id = "small emerald", chance = 3800, maxCount = 3},
	{id = "red gem", chance = 3500, maxCount = 2},
	{id = "orb", chance = 20000, maxCount = 3},
	{id = "might ring", chance = 4990},
	{id = "devil helmet", chance = 6990},
	{id = "demonrage sword", chance = 400},
	{id = "giant sword", chance = 250},
	{id = "demon shield", chance = 250},
	{id = "fire axe", chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -180, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, totalDamage = 100, interval = 4000}},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -280, length = 8, spread = 3, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -90, maxDamage = -350, radius = 3, effect = CONST_ME_BUBBLES, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -170, maxDamage = -340, length = 8, spread = 3, effect = CONST_ME_BUBBLES, target = false},
}

monster.defenses = {
	defense = 60,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -11},
	{type = COMBAT_DEATHDAMAGE, percent = -3},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE, percent = -3}
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
