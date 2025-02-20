local mType = Game.createMonsterType("Arodis Saron")
local monster = {}
monster.description = "Arodis Saron"
monster.experience = 100000
monster.outfit = {
	lookType = 1226
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
	{text = "Ankh sheshonq!", yell = false},
	{text = "Kha Kheper Re Seneb met Arodis!", yell = true},
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
	{id = "wand of defiance", chance = 4100},
	{id = "dragon robe", chance = 2100},
	{id = "earthheart cuirass", chance = 2000},
	{id = "earthheart hauberk", chance = 2000},
	{id = "earthheart platemail", chance = 2000},
	{id = "earthmind raiment", chance = 2000},
	{id = "earthsoul tabard", chance = 2000},
	{id = 9933, chance = 3500},
	{id = "wand of everblazing", chance = 4000},
	{id = "eldritch rod", chance = 3400},
	{id = "eldritch wand", chance = 2200},
	{id = "jungle rod", chance = 1800},
	{id = "bear doll", chance = 1000},
	{id = 2128, chance = 500},
	{id = "demonic essence", chance = 35500, maxCount = 10},
	{id = "dragon figurine", chance = 4200},
	{id = "zaoan chess box", chance = 3600},
	{id = "dawnfire pantaloons", chance = 2100},
	{id = "soulful legs", chance = 2000},
	{id = 27310, chance = 2500},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
    	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1400, maxDamage = -2500},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1550, maxDamage = -3250, length = 6, spread = 3, effect = 274, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -1450, maxDamage = -3200, range = 5, shootEffect = 83, effect = 286, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 20, minDamage = -1400, maxDamage = -3600, range = 6, radius = 4, shootEffect = 83, effect = 313, target = true},
	{name ="arodis attack", interval = 15000, chance = 15, minDamage = -3000, maxDamage = -5000, target = false},
}

monster.defenses = {
	defense = 130,
	armor = 130,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 300, maxDamage = 1000, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 320, effect = 184}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -22},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 60},
	{type = COMBAT_FIREDAMAGE, percent = -14},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
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
