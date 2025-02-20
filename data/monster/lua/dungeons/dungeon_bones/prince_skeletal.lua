local mType = Game.createMonsterType("Prince Skeletal")
local monster = {}
monster.description = "a Prince Skeletal"
monster.experience = 45000
monster.outfit = {
	lookType = 952
}

monster.health = 200000
monster.maxHealth = 200000
monster.corpse = 26691
monster.speed = 650
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4*1000,
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
	targetDistance = 1,
	staticAttackChance = 95
}

monster.summons = {
}

monster.voices = {
}

monster.events = {
	"onDeath_randomTierDrops",
	"playerAttackSound"
}

monster.loot = {
	{id = "crystal coin", chance = 65000, maxCount = 7},
	{id = "platinum coin", chance = 75000, maxCount = 80},
	{id = "small diamond", chance = 18170, maxCount = 8},
	{id = "Enchanted Chicken Wing", chance = 13333},
	{id = "magic sulphur", chance = 11111, maxCount = 2},
	{id = "small ruby", chance = 25000, maxCount = 5},
	{id = "small amethyst", chance = 25000, maxCount = 5},
	{id = "small topaz", chance = 25000, maxCount = 5},
	{id = "small sapphire", chance = 25000, maxCount = 5},
	{id = "small emerald", chance = 25000, maxCount = 5},
	{id = "gold ingot", chance = 14500},
	{id = 8472, chance = 99400, maxCount = 6}, 
	{id = 7590, chance = 99300, maxCount = 6}, 
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = 7591, chance = 99700, maxCount = 6},
	{id = "bone fetish", chance = 33000, maxCount = 4},
	{id = "dirty turban", chance = 24000, maxCount = 3},
	{id = 8844, chance = 17777, maxCount = 9},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000, condition = {type = CONDITION_POISON, totalDamage = 2050, interval = 4000}},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -321, maxDamage = -650, range = 7, shootEffect = CONST_ANI_EARTH, effect = 186, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -450, maxDamage = -999, length = 8, spread = 3, effect = 182, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -1020, length = 8, spread = 3, effect = 184, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -410, maxDamage = -795, range = 7, radius = 5, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -320, maxDamage = -600, radius = 7, effect = 183, target = false},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_MANADRAIN, minDamage = -180, maxDamage = -350, radius = 3, effect = 187, target = false},
}

monster.defenses = {
	defense = 90,
	armor = 90,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 500, maxDamage = 1000, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 950, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_DEATHDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE, percent = 10}
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
