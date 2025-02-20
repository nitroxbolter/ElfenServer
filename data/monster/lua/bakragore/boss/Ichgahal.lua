local mType = Game.createMonsterType("Ichgahal")
local monster = {}

monster.description = "Ichgahal"
monster.experience = 180000
monster.outfit = {
	lookType = 1089,
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
	"playerAttackSound"
}
monster.events = {
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
}

monster.voices = {
}

monster.loot = {
	{id = 2160, chance = 10000, maxCount = 6}, 
	{id = 18417, chance = 10000, maxCount = 15},
	{id = 7368, chance = 10000, maxCount = 100}, 
	{id = 6500, chance = 3000, maxCount = 5}, 
	{id = 26031, chance = 40000, maxCount = 6},
	{id = 26029, chance = 40000, maxCount = 6}, 
	{id = 26030, chance = 40000, maxCount = 6}, 
	{id = 27441, chance = 3500},
	{id = 27440, chance = 28500, maxCount = 3},
	{id = 27453, chance = 500},
	{id = 27438, chance = 22000, maxCount = 4},
	{id = 27419, chance = 10000, maxCount = 2},
	{id = 18413, chance = 8000, maxCount = 3},
	{id = 18414, chance = 8000, maxCount = 3},
	{id = 18415, chance = 8000, maxCount = 3}, 
	{id = 2150, chance = 8000, maxCount = 10},
	{id = 2148, chance = 8000, maxCount = 10}, 
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = 2147, chance = 8000, maxCount = 10},
	{id = 7427, chance = 13000}, 
	{id = 7451, chance = 11000}, 
	{id = 8901, chance = 9000}, 
	{id = 26132, chance = 7600}, 
	{id = 6553, chance = 5500}, 
	{id = "elven mail", chance = 3500},
	{id = "carapace shield", chance = 6500},
	{id = "thaian sword", chance = 17000},
	{id = "zaoan sword", chance = 6500},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover

}

monster.attacks = {
	{name ="melee", interval = 3000, chance = 100, minDamage = -1500, maxDamage = -2300},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -1000, length = 12, spread = 3, effect = 249, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -2600, maxDamage = -2300, length = 12, spread = 3, effect = 193, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -900, maxDamage = -1500, length = 6, spread = 2, effect = CONST_ME_FIREAREA, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = -450, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 105,
	armor = 105,
	{name ="combat", interval = 3000, chance = 10, type = COMBAT_HEALING, minDamage = 800, maxDamage = 1200, effect = 185, target = false},
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