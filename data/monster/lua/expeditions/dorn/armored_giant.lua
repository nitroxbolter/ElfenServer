local mType = Game.createMonsterType("Armored Giant")
local monster = {}
monster.description = "a Armored Giant"
monster.experience = 33000
monster.outfit = {
	lookType = 1329
}

monster.health = 29500
monster.maxHealth = 29500
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
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "amulet of loss", chance = 420},
	{id = "gold ring", chance = 1870},
	{id = "hailstorm rod", chance = 10000},
	{id = "blank rune", chance = 26250, maxCount = 2},
	{id = "golden sickle", chance = 1350},
	{id = "skull staff", chance = 5520},
	{id = "scythe", chance = 13000},
	{id = "soul orb", chance = 53720},
	{id = "assassin star", chance = 15900, maxCount = 10},
	{id = "terra mantle", chance = 2050},
	{id = "terra legs", chance = 3500},
	{id = "gold ingot", chance = 9270},
	{id = "premature bone", chance = 4000},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -470, maxDamage = -970},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -670, maxDamage = -1790, radius = 4, effect = 208, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ARCANEDAMAGE, minDamage = -1000, maxDamage = -1710, radius = 4, effect = 217, target = true},
	{name ="combat", interval = 2000, chance = 52, type = COMBAT_WATERDAMAGE, minDamage = -980, maxDamage = -1470, effect = 228, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_WATERDAMAGE, minDamage = -700, maxDamage = -1590, length = 5, spread = 3, effect = 232, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -17},
	{type = COMBAT_ENERGYDAMAGE, percent = -11},
	{type = COMBAT_EARTHDAMAGE, percent = -4},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 4},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 19},
	{type = COMBAT_ARCANEDAMAGE, percent = -4},
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
