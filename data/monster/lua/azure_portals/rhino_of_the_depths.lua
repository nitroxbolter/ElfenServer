local mType = Game.createMonsterType("Rhino of the Depths")
local monster = {}
monster.description = "a Rhino of the Depths"
monster.experience = 14200
monster.outfit = {
	lookType = 970
}

monster.health = 17500
monster.maxHealth = 17500
monster.corpse = 26691
monster.speed = 320
monster.maxSummons = 0
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
	targetDistance = 1,
	staticAttackChance = 90,
	runHealth = 900
}

monster.summons = {
}
monster.events = {
	"playerAttackSound"
}
monster.voices = {
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 65}, 
	{id = 8472, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = "spellbook of warding", chance = 5000},
	{id = "spellbook of mind control", chance = 3000},
	{id = "spellbook of lost souls", chance = 1000},
	{id = "small diamond", chance = 5000, maxCount = 3},
	{id = "small sapphire", chance = 4200, maxCount = 3},
	{id = "small emerald", chance = 3600, maxCount = 3},
	{id = "small amethyst", chance = 3100, maxCount = 3},
	{id = "might ring", chance = 12500},
	{id = "stealth ring", chance = 12500},
	{id = "gold ring", chance = 3500},
	{id = "ring of healing", chance = 20000},
	{id = 26783, chance = 8500, maxCount = 4}, 
	{id = 26788, chance = 10000, maxCount = 3},
	{id = 26793, chance = 17400, maxCount = 3},
	{id = 26794, chance = 20000, maxCount = 6},
	{id = 26793, chance = 6550, maxCount = 2},
	{id = 26799, chance = 11950, maxCount = 4},
	{id = 26803, chance = 500},
	{id = 26804, chance = 500},
	{id = 26778, chance = 500},  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -800},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -200, maxDamage = -680, range = 7, shootEffect = 57, target = false},
	{name ="combat", interval = 3000, chance = 34, type = COMBAT_PHYSICALDAMAGE, minDamage = -120, maxDamage = -500, range = 7, radius = 1, shootEffect = 39, target = true},
	{name ="combat", interval = 4000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -800, length = 8, spread = 3, effect = 200, target = false},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -480, range = 14, radius = 5, effect = CONST_ME_POFF, target = false},
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
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
