local mType = Game.createMonsterType("Broodrider Inferniarch")
local monster = {}
monster.description = "a Broodrider Inferniarch"
monster.experience = 35000
monster.outfit = {
	lookType = 1368
}

monster.health = 34500
monster.maxHealth = 34500
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
	targetDistance = 4,
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
	{id = "Crystal Coin", chance = 40000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000},
	{id = "crystal crossbow", chance = 2200},
	{id = "mycological bow", chance = 2200},
	{id = "hive bow", chance = 2200},
	{id = "crown legs", chance = 3000},
	{id = "knight legs", chance = 6250},
	{id = "steel boots", chance = 3000},
	{id = "knight armor", chance = 7000},
	{id = "prismatic bolt", chance = 5000, maxCount = 10},
	{id = "crystalline arrow", chance = 5000, maxCount = 10},
	{id = "mystical ribbon", chance = 3000},
	{id = "broodrider saddle", chance = 8000, maxCount = 2},
	{id = "gorger antlers", chance = 9000, maxCount = 2},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, type = COMBAT_WATERDAMAGE, minDamage = -600, maxDamage = -1750, shootEffect = 67},
	{name ="combat", interval = 1500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1600, range = 7, radius = 4, shootEffect = 77, effect = 268, target = true},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -880, maxDamage = -1600, range = 7, shootEffect = 56, effect = 284, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -630, maxDamage = -1880, range = 7, radius = 3, shootEffect = 41, effect = 339, target = false}
}

monster.defenses = {
	defense = 80,
	armor = 80,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 4},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -12},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 22},
	{type = COMBAT_HOLYDAMAGE , percent = -7},
	{type = COMBAT_DEATHDAMAGE , percent = 4},
	{type = COMBAT_WATERDAMAGE, percent = 7},
	{type = COMBAT_ARCANEDAMAGE, percent = -11},
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
