local mType = Game.createMonsterType("Mercurial Mage")
local monster = {}
monster.description = "Mercurial Mage"
monster.experience = 100000
monster.outfit = {
	lookType = 1227
}

monster.health = 300000
monster.maxHealth = 300000
monster.corpse = 26691
monster.speed = 650
monster.race = "undead"

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	challengeable = true,
	convinceable = false,
	ignoreSpawnBlock = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	runHealth = 5000
}

monster.summons = {
}

monster.voices = {
}

monster.events = {
	"onDeath_randomTierDrops",
	"playerAttackSound"
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "crystal coin", chance = 100000, maxCount = 13},
	{id = "stamina extension", chance = 4000},
	{id = "giant ruby", chance = 14000},
	{id = "giant sapphire", chance = 14000},
	{id = "giant topaz", chance = 14000},
	{id = "giant emerald", chance = 14000},
	{id = 26738, chance = 80000, maxCount = 10},
	{id = 26735, chance = 80000, maxCount = 10},
	{id = "great spirit potion", chance = 85000, maxCount = 10},
	{id = "mycological bow", chance = 3100},
	{id = "amazon armor", chance = 1600},
	{id = "fireheart cuirass", chance = 2000},
	{id = "fireheart hauberk", chance = 2000},
	{id = "fireheart platemail", chance = 2000},
	{id = "firemind raiment", chance = 2000},
	{id = "firesoul tabard", chance = 2000},
	{id = "rift bow", chance = 2500},
	{id = "rift crossbow", chance = 2500},
	{id = "demonrage sword", chance = 3400},
	{id = "crystal crossbow", chance = 1700},
	{id = "jungle bow", chance = 1800},
	{id = "bear doll", chance = 1000},
	{id = 2128, chance = 500},
	{id = "demonic essence", chance = 35500, maxCount = 10},
	{id = "dragon figurine", chance = 4200},
	{id = "wolf backpack", chance = 3600},
	{id = "eldritch breeches", chance = 2000},
	{id = 27310, chance = 2500},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
    	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1250, maxDamage = -2150},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -950, maxDamage = -2800, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -1300, maxDamage = -2450, length = 8, spread = 3, effect = 209, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -875, maxDamage = -1405, range = 7, shootEffect = 86, effect = 257, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -1500, maxDamage = -2700, length = 8, spread = 3, effect = 247, target = false},
	{name ="mercurial aoe", interval = 15000, chance = 15, minDamage = -3000, maxDamage = -5000, target = false},
}

monster.defenses = {
	defense = 130,
	armor = 130,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 300, maxDamage = 1000, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 320, effect = 184}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -27},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = -25},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = -9},
	{type = COMBAT_DEATHDAMAGE , percent = 22}
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
