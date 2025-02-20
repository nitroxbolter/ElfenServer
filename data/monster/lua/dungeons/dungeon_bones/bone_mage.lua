local mType = Game.createMonsterType("Bone Mage")
local monster = {}
monster.description = "a Bone Mage"
monster.experience = 6000
monster.outfit = {
	lookType = 950
}

monster.health = 5700
monster.maxHealth = 5700
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
	targetDistance = 4,
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
	{id = "red crystal fragment", chance = 1000000},
	{id = "skull fetish", chance = 9090},
	{id = "terra boots", chance = 4550},
	{id = "bone fetish", chance = 2270},
	{id = "sacred tree amulet", chance = 1140},
	{id = "small enchanted ruby", chance = 1155},
	{id = "northwind rod", chance = 1460},
	{id = "glacier amulet", chance = 1850},
	{id = "ice rapier", chance = 11250},
	{id = "glacier robe", chance = 800},
	{id = "elven amulet", chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -369, condition = {type = CONDITION_FIRE, totalDamage = 6, interval = 9000}},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -70, maxDamage = -280, range = 7, shootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -80, maxDamage = -400, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 180, maxDamage = 250, effect = 185},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
	{type = COMBAT_DEATHDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -7},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 25},
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
