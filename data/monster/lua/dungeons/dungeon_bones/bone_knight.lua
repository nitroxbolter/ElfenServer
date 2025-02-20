local mType = Game.createMonsterType("Bone Knight")
local monster = {}
monster.description = "a Bone Knight"
monster.experience = 6500
monster.outfit = {
	lookType = 951
}

monster.health = 6700
monster.maxHealth = 6700
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
	maxLevel = 500
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
	{id = "assassin dagger", chance = 1000},
	{id = "haunted blade", chance = 1140},
	{id = "nightmare blade", chance = 700},
	{id = "violet crystal shard", chance = 3000},
	{id = "brown crystal splinter", chance = 4500},
	{id = "red crystal fragment", chance = 3600},
	{id = "Terra Hood", chance = 2000},
	{id = "Terra Amulet", chance = 3800},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -165, maxDamage = -320, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -280, range = 1, effect = CONST_ME_SMALLCLOUDS, target = true},
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_DEATHDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE, percent = 30}
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
