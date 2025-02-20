local mType = Game.createMonsterType("Mechanic Goblin")
local monster = {}
monster.description = "a Mechanic Goblin"
monster.experience = 33000
monster.outfit = {
	lookType = 1309
}

monster.health = 41500
monster.maxHealth = 41500
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
	{id = "Glowing Rune", chance = 6000, maxCount = 5},
	{id = "Small Diamond", chance = 5000, maxCount = 5},
	{id = "Fire Axe", chance = 1750},
	{id = "Soul Orb", chance = 9260, maxCount = 5},
	{id = "Spellbook of Warding", chance = 850},
	{id = "Wand of Inferno", chance = 2250},
	{id = "violet crystal shard", chance = 3000},
	{id = "brown crystal splinter", chance = 12000, maxCount = 2},
	{id = "Fire Sword", chance = 4250},
	{id = "Magma Coat", chance = 1950},
	{id = "Magma Legs", chance = 1450},
	{id = "assassin dagger", chance = 1000},
	{id = 29349, chance = 29000, maxCount = 2},
	{id = "haunted blade", chance = 2000},
	{id = "nightmare blade", chance = 980},
	{id = "advanced mana potion", chance = 15500, maxCount = 3},
	{id = "advanced health potion", chance = 15500, maxCount = 3},
	{id = "advanced spirit potion", chance = 15500, maxCount = 3},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1200},
	{name ="combat", interval = 2000, chance = 11, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -1685, radius = 3, effect = 348, target = false},
	{name ="combat", interval = 2000, chance = 7, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -1500, range = 7, shootEffect = 32, effect = 345, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1600, length = 4, spread = 3, effect = 266, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 17},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 8},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -9},
	{type = COMBAT_HOLYDAMAGE , percent = -14},
	{type = COMBAT_DEATHDAMAGE , percent = 5},
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
