local mType = Game.createMonsterType("Reflect Spider")
local monster = {}
monster.description = "a Reflect Spider"
monster.experience = 8800
monster.outfit = {
	lookType = 960
}

monster.health = 10000
monster.maxHealth = 10000
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
	{id = "small diamond", chance = 4900, maxCount = 5},
	{id = "small emerald", chance = 4350, maxCount = 5},
	{id = "small ruby", chance = 4500, maxCount = 5},
	{id = "small sapphire", chance = 4200, maxCount = 5},
	{id = 26811, chance = 500}, 
	{id = 26812, chance = 500},
	{id = 26797, chance = 13400, maxCount = 2},
	{id = 26788, chance = 11100, maxCount = 2},
	{id = 26785, chance = 5550, maxCount = 2},
	{id = 26784, chance = 31950, maxCount = 3},
	{id = 26790, chance = 12950},
	{id = 26778, chance = 300},  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 180, attack = 200},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -400, radius = 6, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 9, minDamage = -400, maxDamage = -600, radius = 8, effect = 187, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_ICEDAMAGE, minDamage = -250, maxDamage = -400, range = 7, radius = 6, shootEffect = 56, effect = CONST_ME_STONES, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -650, range = 7, radius = 4, shootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_EXPLOSIONHIT, target = true},
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 4},
	{type = COMBAT_FIREDAMAGE, percent = -8},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
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
