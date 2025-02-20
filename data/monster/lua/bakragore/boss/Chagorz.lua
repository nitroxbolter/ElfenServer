local mType = Game.createMonsterType("Chagorz")
local monster = {}

monster.description = "Chagorz"
monster.experience = 180000
monster.outfit = {
	lookType = 1090,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 350000
monster.maxHealth = 350000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 550
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20
}



monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.events = {
}

monster.light = {
	level = 0,
	color = 0
}
monster.events = {
	"playerAttackSound"
}
monster.summon = {
}

monster.voices = {
}

monster.loot = {
	{id = 2160, chance = 10000, maxCount = 6}, 
	{id = 18418, chance = 10000, maxCount = 15},
	{id = 7368, chance = 10000, maxCount = 100}, 
	{id = 26031, chance = 40000, maxCount = 6},
	{id = 26029, chance = 40000, maxCount = 6}, 
	{id = 26030, chance = 40000, maxCount = 6}, 
	{id = 27441, chance = 3500},
	{id = 27440, chance = 28500, maxCount = 3},
	{id = 27455, chance = 500},
	{id = 27448, chance = 10000, maxCount = 2},
	{id = 27421, chance = 10000, maxCount = 2},
	{id = "giant ruby", chance = 2840},
	{id = "magic sulphur", chance = 2740},
	{id = "yellow gem", chance = 2900},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "mastermind potion", chance = 2900, maxCount = 10},
	{id = "violet gem", chance = 1500},
	{id = 8904, chance = 3360},
	{id = 7453, chance = 4610},
	{id = 8926, chance = 3450},
	{id = 2470, chance = 4450}, 
	{id = 8879, chance = 7450}, 
	{id = 8918, chance = 5300},
	{id = "depth calcei", chance = 7000},
	{id = "calopteryx cape", chance = 14000},
	{id = "earthborn titan armor", chance = 5000},
	{id = "golden boots", chance = 2000},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
	

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1300, maxDamage = -2250},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -500, maxDamage = -900, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -900, range = 4, radius = 4, effect = 241, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1000, maxDamage = -1200, length = 10, spread = 3, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -1500, maxDamage = -1900, length = 10, spread = 3, effect = 225, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = -450, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 105,
	armor = 105,
	{name ="combat", interval = 3000, chance = 10, type = COMBAT_HEALING, minDamage = 700, maxDamage = 1500, effect = 185, target = false},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 15},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)