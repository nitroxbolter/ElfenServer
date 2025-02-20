local mType = Game.createMonsterType("Mossblade Hopper")
local monster = {}
monster.description = "a Mossblade Hopper"
monster.experience = 30000
monster.outfit = {
	lookType = 1353
}

monster.health = 27500
monster.maxHealth = 27500
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
	{id = "giant sword", chance = 60000},
	{id = "falcon longsword", chance = 800},
	{id = "mercenary sword", chance = 10000},
	{id = "relic sword", chance = 7000},
	{id = "demonrage sword", chance = 2800},
	{id = "zaoan sword", chance = 3000},
	{id = "zaoan helmet", chance = 3000},
	{id = "zaoan armor", chance = 2700},
	{id = "zaoan legs", chance = 2400},
	{id = "zaoan shoes", chance = 9100},
	{id = "old stick", chance = 4000, maxCount = 2},
	{id = "dragon fruit", chance = 5000},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1800},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ARCANEDAMAGE, minDamage = -800, maxDamage = -1400, radius = 7, effect = 309, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -900, maxDamage = -1300, radius = 7, effect = 304, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -800, maxDamage = -1800, range = 7, effect = 333, target = false},
}

monster.defenses = {
	defense = 80,
	armor = 80,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 4},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -8},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -10},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = 17},
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
