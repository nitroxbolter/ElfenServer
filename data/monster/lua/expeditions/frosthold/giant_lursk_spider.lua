local mType = Game.createMonsterType("Giant Lursk Spider")
local monster = {}
monster.description = "a Giant Lursk Spider"
monster.experience = 40000
monster.outfit = {
	lookType = 1322
}

monster.health = 31000
monster.maxHealth = 31000
monster.corpse = 26691
monster.speed = 350
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
	{id = "Crystal Coin", chance = 40000, maxCount = 2},
	{id = "Platinum Coin", chance = 40000, maxCount = 20},
	{id = "advanced mana potion", chance = 11500, maxCount = 5},
	{id = "advanced health potion", chance = 11500, maxCount = 5},
	{id = "advanced spirit potion", chance = 11500, maxCount = 5},
	{id = "violet gem", chance = 5600},
	{id = "opal", chance = 3200, maxCount = 2},
	{id = "wand of voodoo", chance = 3200},
	{id = "gold ingot", chance = 5750, maxCount = 2},
	{id = "epee", chance = 2120},
	{id = "frozen eye", chance = 3750},
	{id = "glacier mask", chance = 3000},
	{id = "glacier shoes", chance = 4650},
	{id = "glacier kilt", chance = 2700},
	{id = "glacier robe", chance = 1950},
	{id = "glacier amulet", chance = 7650},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -2200},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -800, maxDamage = -1450, radius = 4, effect = 342, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1450, range = 5, shootEffect = 12, effect = 337, target = true},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -1600, length = 3, spread = 2, effect = 326, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 24},
	{type = COMBAT_ENERGYDAMAGE, percent = -8},
	{type = COMBAT_EARTHDAMAGE, percent = 9},
	{type = COMBAT_FIREDAMAGE, percent = -16},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -40},
	{type = COMBAT_DEATHDAMAGE , percent = 11},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = -50},
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
