local mType = Game.createMonsterType("Frosted Dragon")
local monster = {}
monster.description = "a Frosted Dragon"
monster.experience = 30400
monster.outfit = {
	lookType = 1316
}

monster.health = 21800
monster.maxHealth = 21800
monster.corpse = 26691
monster.speed = 400
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 2000,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.summons = {
}

monster.events = {
	"playerAttackSound"
}

monster.voices = {
}

monster.loot = { 
	{id = "Platinum Coin", chance = 40000, maxCount = 99},
	{id = "Platinum Coin", chance = 40000, maxCount = 40},
	{id = "crystal sword", chance = 4710},
	{id = "glorious axe", chance = 2800},
	{id = "blue crystal splinter", chance = 14120},
	{id = "cyan crystal fragment", chance = 6050},
	{id = "guardian halberd", chance = 4560},
	{id = "tower shield", chance = 1820},
	{id = "iron ore", chance = 6000},
	{id = "small diamond", chance = 3578, maxCount = 3},
	{id = "small sapphire", chance = 3578, maxCount = 3},
	{id = "prismatic bolt", chance = 6500, maxCount = 5},
	{id = "crystalline arrow", chance = 4950, maxCount = 10},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "frozen eye", chance = 3750},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -680, maxDamage = -1555},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -1600, length = 8, spread = 3, effect = 308, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_WATERDAMAGE, minDamage = -740, maxDamage = -1580, radius = 3, effect = 343, target = false},
	{name ="speed", interval = 2000, chance = 10, speed = -800, radius = 2, effect = 304, target = false, duration = 20000}
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 6},
	{type = COMBAT_ENERGYDAMAGE, percent = 2},
	{type = COMBAT_EARTHDAMAGE, percent = -11},
	{type = COMBAT_FIREDAMAGE, percent = -14},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 12},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 10},
	{type = COMBAT_ARCANEDAMAGE, percent = 0},
}

monster.immunities = {
	{type = "fire", condition = false},
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
