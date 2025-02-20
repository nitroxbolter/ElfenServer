local mType = Game.createMonsterType("Bone Berserker")
local monster = {}
monster.description = "a Bone Berserker"
monster.experience = 5800
monster.outfit = {
	lookType = 944
}

monster.health = 5100
monster.maxHealth = 5100
monster.corpse = 26691
monster.speed = 280
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4*1000,
	chance = 20
}


monster.getLevel = {
	minLevel = 1,
	maxLevel = 50
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
	staticAttackChance = 90
}
monster.events = {
	"playerAttackSound"
}
monster.summons = {
}

monster.voices = {
}


monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100}, -- gold coin
	{id = 2152, chance = 100000, maxCount = 6}, -- platinum coin
	{id = 8472, chance = 11400, maxCount = 2}, -- great spirit potion
	{id = 7590, chance = 10300, maxCount = 2}, -- great mana potion
	{id = 7591, chance = 9700, maxCount = 2}, -- great health potion
	{id = "small emerald", chance = 11000, maxCount = 2},
	{id = "small amethyst", chance = 12000, maxCount = 3},
	{id = "platinum coin", chance = 100000, maxCount = 9},
	{id = "blue robe", chance = 1500},
	{id = "great mana potion", chance = 40000, maxCount = 2},
	{id = "ultimate health potion", chance = 18000},
	{id = "small topaz", chance = 16000, maxCount = 2},
	{id = "blue crystal shard", chance = 11000},
	{id = "blue crystal splinter", chance = 13000},
	{id = "cyan crystal fragment", chance = 18000},
	{id = "trapped bad dream monster", chance = 17000},
	{id = "bowl of terror sweat", chance = 14000},
	{id = "gold ingot", chance = 2300},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -80, maxDamage = -500},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -50, maxDamage = -350, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{name = "speed", chance = 15, interval = 2000, speed = 380, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_DEATHDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE, percent = -15}
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
