local mType = Game.createMonsterType("Master of the Elements")
local monster = {}
monster.description = "a Master of the Elements"
monster.experience = 100000
monster.outfit = {
	lookType = 975
}

monster.health = 300000
monster.maxHealth = 300000
monster.corpse = 26691
monster.speed = 650
monster.maxSummons = 3
monster.race = "undead"

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.getLevel = {
	minLevel = 1,
	maxLevel = 10
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
	targetDistance = 3,
	staticAttackChance = 90,
	runHealth = 5000
}

monster.summons = {
	{name = "bulltauren alchemist", chance = 6, interval = 1000, max = 1},
	{name = "bulltauren brute", chance = 6, interval = 1000, max = 1},
	{name = "bulltauren forgepriest", chance = 6, interval = 1000, max = 1},
	{name = "mega dragon", chance = 6, interval = 1000, max = 1},
	{name = "wardragon", chance = 6, interval = 1000, max = 1},
	{name = "mitmah vanguard", chance = 6, interval = 1000, max = 1},
	{name = "tauren herk", chance = 6, interval = 1000, max = 1},
}

monster.voices = {
}

monster.events = {
	"onDeath_randomTierDrops",
	"playerAttackSound"
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 65}, 
	{id = 2160, chance = 85000, maxCount = 25},
	{id = 8472, chance = 93000, maxCount = 8}, 
	{id = 26735, chance = 93000, maxCount = 8}, 
	{id = 26738, chance = 93000, maxCount = 8}, 
	{id = "guardian gem", chance = 88000, maxCount = 2},
	{id = "marksman gem", chance = 88000, maxCount = 2},
	{id = "sage gem", chance = 88500, maxCount = 2},
	{id = "mystic gem", chance = 85000, maxCount = 2},
	{id = "splintered mitmah gem", chance = 91000, maxCount = 2},
	{id = "atab's mitmah helmet", chance = 73500},
	{id = "idol of the forge", chance = 64800, maxCount = 2},
	{id = "nimmersatt's seal", chance = 62950},
	{id = "gold-scaled sentinel", chance = 68000},
	{id = "crystallised blood", chance = 65800, maxCount = 4},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "exalted seal", chance = 38500, maxCount = 2},
	{id = "store coin", chance = 5000, maxCount = 10},
	{id = "star inlay stone", chance = 81000, maxCount = 5},
	{id = "legendary three stars inlay stone", chance = 5000},
	{id = "legendary two stars inlay stone", chance = 9000, maxCount = 2},
	{id = "legendary star inlay stone", chance = 14000},
	{id = "epic three stars inlay stone", chance = 11000},
	{id = "epic two stars inlay stone", chance = 16500, maxCount = 2},
	{id = "epic star inlay stone", chance = 21000},
	{id = "very rare three stars inlay stone", chance = 18500, maxCount = 2},
	{id = "very rare two stars inlay stone", chance = 21000, maxCount = 2},
	{id = "very rare star inlay stone", chance = 34000, maxCount = 3},
	{id = "rare three stars inlay stone", chance = 34000, maxCount = 2},
	{id = "rare two stars inlay stone", chance = 42000, maxCount = 2},
	{id = "rare star inlay stone", chance = 57500, maxCount = 3},
	{id = "star extractor", chance = 14000, maxCount = 3},
	{id = "nightmare coin", chance = 21000, maxCount = 8},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1150},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -550, maxDamage = -2000, range = 7, shootEffect = CONST_ANI_ENERGY, effect = 214, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = 203, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -850, maxDamage = -1500, length = 7, spread = 3, effect = 207, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -950, maxDamage = -1700, length = 7, spread = 3, effect = 201, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -1300, radius = 5, effect = 200, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -550, maxDamage = -1250, range = 7, radius = 5, effect = 209, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -650, maxDamage = -950, range = 1, effect = 197, target = true}
}

monster.defenses = {
	defense = 95,
	armor = 95,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 17},
	{type = COMBAT_FIREDAMAGE, percent = 6},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 7},
	{type = COMBAT_HOLYDAMAGE , percent = -13},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "fire", combat = true, condition = true},
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
