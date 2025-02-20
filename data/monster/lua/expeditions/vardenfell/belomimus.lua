local mType = Game.createMonsterType("Belomimus")
local monster = {}
monster.description = "a Belomimus"
monster.experience = 31500
monster.outfit = {
	lookType = 1377
}

monster.health = 32000
monster.maxHealth = 32000
monster.corpse = 26691
monster.speed = 450
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
	{id = "Crystal Coin", chance = 70000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "bonelord helmet", chance = 5500},
	{id = "gnome helmet", chance = 1800},
	{id = "dragon scale mail", chance = 2900},
	{id = "poison fin", chance = 8000},
	{id = "robust scale", chance = 8000, maxCount = 2},
	{id = "viscosity", chance = 1000},
	{id = "fish fin", chance = 14528, maxCount = 2 },
	{id = "relic sword", chance = 7957},
	{id = "assassin star", chance = 6139, maxCount = 8 },
	{id = "glacier robe", chance = 8504, maxCount = 1 },
	{id = "skull helmet", chance = 2400, maxCount = 1 },
	{id = "giant shrimp", chance = 9000, maxCount = 1 },
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -1000},
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1850},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -750, maxDamage = -1730, range = 7, shootEffect = 55, effect = 236, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1250, maxDamage = -1950, length = 8, spread = 3, shootEffect = 56, effect = 281, target = false},
	{name ="speed", interval = 2000, chance = 10, speed = -600, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 60000},

}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 11},
	{type = COMBAT_ENERGYDAMAGE, percent = -4},
	{type = COMBAT_EARTHDAMAGE, percent = 19},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 6},
	{type = COMBAT_HOLYDAMAGE , percent = -11},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 0},
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
