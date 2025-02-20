local mType = Game.createMonsterType("Forbidden Chevalier")
local monster = {}
monster.description = "a Forbidden Chevalier"
monster.experience = 160000
monster.outfit = {
	lookType = 1255
}

monster.health = 550000
monster.maxHealth = 550000
monster.corpse = 26691
monster.speed = 720
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 6*1000,
	chance = 45
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
	staticAttackChance = 95
}

monster.summons = {
}

monster.voices = {
}

monster.events = {
	"playerAttackSound"
}
monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = 26795, chance = 75000, maxCount = 2},
	{id = 28117, chance = 80000, maxCount = 3},
	{id = 28119, chance = 50000, maxCount = 2},
	{id = 28122, chance = 45000, maxCount = 2},
	{id = 26780, chance = 25000, maxCount = 3},
	{id = 28080, chance = 89000, maxCount = 10},
	{id = 28088, chance = 89000, maxCount = 10},
	{id = 28076, chance = 89000, maxCount = 10},
	{id = 28124, chance = 400, maxCount = 1},
	{id = 28125, chance = 400, maxCount = 1},
	{id = 28126, chance = 400, maxCount = 1},
	{id = 2128, chance = 100, maxCount = 1},
	{id = 27653, chance = 400, maxCount = 1},
	{id = 27654, chance = 400, maxCount = 1},
	{id = 27656, chance = 400, maxCount = 1},
	{id = 27658, chance = 400, maxCount = 1},
	{id = 27660, chance = 400, maxCount = 1},
	{id = 27661, chance = 400, maxCount = 1},
	{id = 27663, chance = 400, maxCount = 1},
	{id = 27664, chance = 400, maxCount = 1},
	{id = 27665, chance = 400, maxCount = 1},
	{id = 27667, chance = 400, maxCount = 1},
	{id = 27668, chance = 400, maxCount = 1},
	{id = 27669, chance = 400, maxCount = 1},
	{id = 27670, chance = 400, maxCount = 1},
	{id = 27671, chance = 400, maxCount = 1},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1450, maxDamage = -2800, condition = {type = CONDITION_CURSED, totalDamage = 2050, interval = 4000}},
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_MANADRAIN, minDamage = -1400, maxDamage = -2200, range = 7, shootEffect = 85, effect = 252, target = false},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_LIFEDRAIN, minDamage = -1500, maxDamage = -2600, radius = 10, effect = 242, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -1800, maxDamage = -2850, length = 8, spread = 3, effect = 312, target = false},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -1800, maxDamage = -2930, radius = 6, effect = 306, target = false},
}

monster.defenses = {
	defense = 90,
	armor = 90,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 3000, maxDamage = 5000, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 950, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_DEATHDAMAGE, percent = 85},
	{type = COMBAT_ENERGYDAMAGE, percent = -11},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_ICEDAMAGE, percent = -6},
	{type = COMBAT_HOLYDAMAGE, percent = 0}
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
