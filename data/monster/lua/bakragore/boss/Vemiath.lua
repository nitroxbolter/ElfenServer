local mType = Game.createMonsterType("Vemiath")
local monster = {}

monster.description = "Vemiath"
monster.experience = 180000
monster.outfit = {
	lookType = 1091,
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
	{id = 18413, chance = 10000, maxCount = 15},
	{id = 7368, chance = 10000, maxCount = 100}, 
	{id = 6500, chance = 3000, maxCount = 5},  
	{id = 26031, chance = 40000, maxCount = 6},
	{id = 26029, chance = 40000, maxCount = 6}, 
	{id = 26030, chance = 40000, maxCount = 6}, 
	{id = 27440, chance = 3500},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = 27439, chance = 18500, maxCount = 2},
	{id = 27438, chance = 28500, maxCount = 3},
	{id = 27456, chance = 500},
	{id = 27420, chance = 1000},
	{id = 27448, chance = 7000, maxCount = 3},
	{id = 27429, chance = 14500},
	{id = 25522, chance = 2700}, 
	{id = 25523, chance = 1700}, 
	{id = 7420, chance = 900},
	{id = 25377, chance = 100000, maxCount = 2},
	{id = 7426, chance = 4000}, 
	{id = "amber with a bug", chance = 11000},
	{id = "ogre scepta", chance = 9000},
	{id = "golden legs", chance = 4500},
	{id = "demon helmet", chance = 1000},
	{id = "dark trinity mace", chance = 900},
	{id = "fireborn giant armor", chance = 3000},
	{id = "triple bolt crossbow", chance  = 600},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1500, maxDamage = -2500},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -1000, length = 10, spread = 3, effect = 244, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = -450, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -700, radius = 5, effect = 243, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false}
}

monster.defenses = {
	defense = 105,
	armor = 105,
	{name ="combat", interval = 3000, chance = 10, type = COMBAT_HEALING, minDamage = 800, maxDamage = 1500, effect = 185, target = false},
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