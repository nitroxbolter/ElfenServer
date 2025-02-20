local mType = Game.createMonsterType("Enforced Mountain Goblin")
local monster = {}
monster.description = "a Enforced Mountain Goblin"
monster.experience = 35000
monster.outfit = {
	lookType = 1348
}

monster.health = 32000
monster.maxHealth = 32000
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
	{id = "brown mushroom", chance = 56120, maxCount = 9},
	{id = "fire axe", chance = 21400},
	{id = "ivory comb", chance = 10200},
	{id = "mercenary sword", chance = 11050},
	{id = "haunted blade", chance = 9960},
	{id = "warrior's axe", chance = 7300},
	{id = "twiceslicer", chance = 5000},
	{id = "ornate crossbow", chance = 9920},
	{id = "warrior helmet", chance = 31920},
	{id = "goblin essence", chance = 6000, maxCount = 3},
	{id = "premature bone", chance = 4000, maxCount = 2},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -900, maxDamage = -1500},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_WATERDAMAGE, minDamage = -750, maxDamage = -1550, range = 7, radius = 3, shootEffect = 68, effect = 329, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -2230, length = 6, spread = 3, effect = 225, target = false},
}

monster.defenses = {
	defense = 125,
	armor = 125,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = -7},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -9},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 100},
	{type = COMBAT_WATERDAMAGE, percent = 18},
	{type = COMBAT_ARCANEDAMAGE, percent = -40},
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
