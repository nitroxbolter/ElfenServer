local mType = Game.createMonsterType("Bogspike Lancer")
local monster = {}
monster.description = "a Bogspike Lancer"
monster.experience = 30000
monster.outfit = {
	lookType = 1351
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
	{id = "golden legs", chance = 2800},
	{id = "giant ruby", chance = 3500},
	{id = "talon", chance = 14000, maxCount = 4},
	{id = "vampire shield", chance = 15500},
	{id = "zaoan halberd", chance = 5000},
	{id = "mino lance", chance = 3600},
	{id = "rift lance", chance = 2800},
	{id = "old stick", chance = 4000, maxCount = 2},
	{id = "dragon fruit", chance = 5000},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1900},
	{name ="combat", interval = 1500, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -800, maxDamage = -1500, radius = 3, shootEffect = 83, target = true},
	{name ="combat", interval = 1500, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -1650, length = 4, spread = 3, effect = 218, target = false},
	{name ="combat", interval = 1500, chance = 35, type = COMBAT_ARCANEDAMAGE, minDamage = -500, maxDamage = -1650, radius = 4, effect = 203, target = true},
}

monster.defenses = {
	defense = 80,
	armor = 80,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 13},
	{type = COMBAT_EARTHDAMAGE, percent = 6},
	{type = COMBAT_FIREDAMAGE, percent = -4},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -9},
	{type = COMBAT_DEATHDAMAGE , percent = -3},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = 4},
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
