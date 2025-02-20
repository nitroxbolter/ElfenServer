local mType = Game.createMonsterType("Spiked Enforcer")
local monster = {}
monster.description = "a Spiked Enforcer"
monster.experience = 39000
monster.outfit = {
	lookType = 1331
}

monster.health = 35000
monster.maxHealth = 35000
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
	{id = "violet gem", chance = 74560},
	{id = "spellbook of warding", chance = 18920},
	{id = "underworld rod", chance = 31920},
	{id = "springsprout rod", chance = 28920},
	{id = "gold ingot", chance = 54560},
	{id = "glacial rod", chance = 9560},
	{id = "green gem", chance = 64560},
	{id = "terra rod", chance = 10920},
	{id = "stone skin amulet", chance = 31920},
	{id = "platinum amulet", chance = 13920},
	{id = "underworld rod", chance = 8920},
	{id = "springsprout rod", chance = 4920},
	{id = "sacred tree amulet", chance = 9920},
	{id = "premature bone", chance = 4000},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1500, range = 7, shootEffect = 85, effect = 253, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1050, maxDamage = -1900, radius = 4, effect = 273, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -1300, range = 7, shootEffect = 87, effect = 261, target = true}
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 14},
	{type = COMBAT_ENERGYDAMAGE, percent = 8},
	{type = COMBAT_EARTHDAMAGE, percent = -17},
	{type = COMBAT_FIREDAMAGE, percent = 11},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = -7},
	{type = COMBAT_ARCANEDAMAGE, percent = 0},
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
