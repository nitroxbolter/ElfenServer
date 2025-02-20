local mType = Game.createMonsterType("Frost Hydra")
local monster = {}
monster.description = "a Frost Hydra"
monster.experience = 33000
monster.outfit = {
	lookType = 1315
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
	{id = "golden legs", chance = 1050},
	{id = "giant ruby", chance = 1300},
	{id = "giant sapphire", chance = 1300},
	{id = "giant emerald", chance = 1300},
	{id = "skull staff", chance = 2350},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "gold token", chance = 2700},
	{id = "gold ingot", chance = 4400},
	{id = "silver token", chance = 4500, maxCount = 2},
	{id = "amulet of loss", chance = 1900},
	{id = "frozen eye", chance = 3750},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -870, maxDamage = -1670},
	{name ="speed", interval = 2000, chance = 25, speed = -700, range = 7, radius = 4, shootEffect = 37, effect = 343, target = true, duration = 15000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -820, maxDamage = -1950, length = 8, spread = 3, effect = 282, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ARCANEDAMAGE, minDamage = -780, maxDamage = -1655, shootEffect = 70, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ARCANEDAMAGE, minDamage = -666, maxDamage = -1500, length = 8, spread = 3, effect = 350, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -9},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -12},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 45},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = 9},
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
