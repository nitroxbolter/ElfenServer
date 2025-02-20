local mType = Game.createMonsterType("Bat Goblin")
local monster = {}
monster.description = "a Bat Goblin"
monster.experience = 28700
monster.outfit = {
	lookType = 1310
}

monster.health = 36000
monster.maxHealth = 36000
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
	runHealth = 0,
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
	{id = "Blue Crystal Shard", chance = 6500},
	{id = "Violet Gem", chance = 4000},
	{id = "Green Gem", chance = 4800},
	{id = "Blue Gem", chance = 4000},
	{id = "Diamond Sceptre", chance = 7000},
	{id = "Glacier Mask", chance = 1350},
	{id = "Ice Rapier", chance = 3250},
	{id = "Crystal Mace", chance = 950},
	{id = "Glacier Kilt", chance = 1250},
	{id = "Glacier Robe", chance = 1250},
	{id = "Glacier Shoes", chance = 900},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1210},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_WATERDAMAGE, minDamage = -600, maxDamage = -1800, range = 7, shootEffect = 68, effect = 232, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = -400, radius = 1, target = true, duration = 30*1000, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -1600, radius = 4, effect = 308, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -6},
	{type = COMBAT_FIREDAMAGE, percent = -24},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 8},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 30},
	{type = COMBAT_ARCANEDAMAGE, percent = -15},
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
