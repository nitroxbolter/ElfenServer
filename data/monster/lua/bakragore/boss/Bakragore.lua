local mType = Game.createMonsterType("Bakragore")
local monster = {}

monster.description = "Bakragore"
monster.experience = 550000
monster.outfit = {
	lookType = 1092,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 660000
monster.maxHealth = 660000
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
	"onDeath_Bakragore",
	"playerAttackSound"
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
	{id = 2160, chance = 100000, maxCount = 30}, 
	{id = 26031, chance = 40000, maxCount = 20},
	{id = 26029, chance = 40000, maxCount = 20}, 
	{id = 26030, chance = 40000, maxCount = 20}, 
	{id = "white gem", chance = 30000, maxCount = 1},
	{id = "giant sapphire", chance = 3000, maxCount = 1},
	{id = "fireborn giant armor", chance = 18000},
	{id = "royal crossbow", chance = 18000},
	{id = 8929, chance = 13000},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "blue gem", chance = 9000},
	{id = "gold ring", chance = 9000},
	{id = "steel boots", chance = 9000},
	{id = "thunder hammer", chance = 9000},
	{id = 2390, chance = 50}, -- Magic Longsword Ultra Rare
	{id = 27452, chance = 1000}, -- figurine bakragore
	{id = 27457, chance = 1000}, -- bakragore's amalgamation
	{id = 9971, chance = 800}, -- gold ingot
	{id = 27446, chance = 600}, -- Bag you covet
	{id = 27458, chance = 600}, -- Sanguine Items ( not grand )
	{id = 27460, chance = 600},
	{id = 27462, chance = 600},
	{id = 27464, chance = 600},
	{id = 27466, chance = 600},
	{id = 27468, chance = 600},
	{id = 27470, chance = 600},
	{id = 27471, chance = 600},
	{id = 27473, chance = 600},
	{id = 27475, chance = 600},
	{id = 27476, chance = 600},
	{id = 27478, chance = 600},
	{id = 27479, chance = 600},
	{id = 27481, chance = 600},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3000},
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -900, maxDamage = -1100, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -1000, length = 8, spread = 3, effect = 252, target = false},
	{name ="combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -2000, length = 8, spread = 3, effect = 249, target = false},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -950, maxDamage = -2400, range = 7, radius = 3, shootEffect = 37, effect = 240, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -1000, maxDamage = -2500, length = 8, spread = 3, effect = 244, target = false},
}

monster.defenses = {
	defense = 135,
	armor = 135,
	{name ="combat", interval = 3000, chance = 15, type = COMBAT_HEALING, minDamage = 2500, maxDamage = 3500, effect = 185, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = 850, effect = CONST_ME_MAGIC_RED}
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