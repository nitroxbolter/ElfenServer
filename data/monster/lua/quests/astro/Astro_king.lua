local mType = Game.createMonsterType("Astro King")
local monster = {}
monster.description = "Astro King"
monster.experience = 100000
monster.outfit = {
	lookType = 1209
}

monster.health = 300000
monster.maxHealth = 300000
monster.corpse = 26691
monster.speed = 650
monster.maxSummons = 4
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
	{name = "astro warrior", chance = 8, interval = 1000, max = 2},
	{name = "astro mage", chance = 8, interval = 1000, max = 2},
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
	{text = "MINIONS COME FROM THE HELL !", yell = false},
	{text = "ASTRO POWER", yell = true},
}

monster.loot = {
	{id = "crystal coin", chance = 100000, maxCount = 13},
	{id = "stamina extension", chance = 4500},
	{id = "giant ruby", chance = 14000},
	{id = "giant sapphire", chance = 14000},
	{id = "giant topaz", chance = 14000},
	{id = "giant emerald", chance = 14000},
	{id = 26738, chance = 80000, maxCount = 10},
	{id = 26735, chance = 80000, maxCount = 10},
	{id = "great spirit potion", chance = 85000, maxCount = 10},
	{id = "obsidian truncheon", chance = 9100},
	{id = "the stomper", chance = 6000},
	{id = "frostheart cuirass", chance = 2000},
	{id = "frostheart hauberk", chance = 2000},
	{id = "frostheart platemail", chance = 2000},
	{id = "frostmind raiment", chance = 2000},
	{id = "frostsoul tabard", chance = 2000},
	{id = "molten plate", chance = 1500},
	{id = "icy culottes", chance = 1500},
	{id = "impaler", chance = 1200},
	{id = "warlord sword", chance = 950},
	{id = "dark trinity mace", chance = 800},
	{id = "bunnyslippers", chance = 3500},
	{id = "bear doll", chance = 800},
	{id = 2128, chance = 500},
	{id = "demonic essence", chance = 35500, maxCount = 10},
	{id = "dragon figurine", chance = 6200},
	{id = "winged backpack", chance = 4600},
	{id = "fabulous legs", chance = 2000},
	{id = "soulful legs", chance = 2000},
	{id = 27310, chance = 2500},
	{id = "galea mortis", chance = 2000},
	{id = "toga mortis", chance = 2000},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
    	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -2250},
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -900, maxDamage = -2510, range = 7, radius = 7, shootEffect = 83, effect = 312, target = true},
	{name ="combat", interval = 1800, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -1100, maxDamage = -2580, range = 7, radius = 5, effect = 303, target = false},
	{name ="combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -1300, maxDamage = -3450, length = 8, spread = 3, effect = 261, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -1370, maxDamage = -2320, radius = 3, effect = 301, target = true},
	{name ="astro wave", interval = 15000, chance = 15, target = false}
}

monster.defenses = {
	defense = 130,
	armor = 130,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 300, maxDamage = 1000, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 320, effect = 184}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 18},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 24},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -2},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
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
