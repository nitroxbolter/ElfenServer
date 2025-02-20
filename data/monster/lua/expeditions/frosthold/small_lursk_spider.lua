local mType = Game.createMonsterType("Small Lursk Spider")
local monster = {}
monster.description = "a Small Lursk Spider"
monster.experience = 15000
monster.outfit = {
	lookType = 1321
}

monster.health = 13500
monster.maxHealth = 13500
monster.corpse = 26691
monster.speed = 200
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
	targetDistance = 3,
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
	{id = "Platinum Coin", chance = 40000, maxCount = 40},
	{id = "Platinum Coin", chance = 40000, maxCount = 40},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "violet crystal shard", chance = 2000},
	{id = "brown crystal splinter", chance = 4000, maxCount = 2},
	{id = "red crystal fragment", chance = 3600},

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -650, maxDamage = -1200},
	{name ="combat", interval = 2000, chance = 50, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -1000, length = 4, spread = 0, effect = 343, target = false},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_ARCANEDAMAGE, minDamage = -700, maxDamage = -1500, range = 3, radius = 3, effect = 333, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1500, range = 7, shootEffect = 332, target = true},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 7},
	{type = COMBAT_ENERGYDAMAGE, percent = 11},
	{type = COMBAT_EARTHDAMAGE, percent = -18},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 8},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = 3},
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
