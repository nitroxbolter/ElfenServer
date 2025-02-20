local mType = Game.createMonsterType("Bone Warrior")
local monster = {}
monster.description = "a Bone Warrior"
monster.experience = 6150
monster.outfit = {
	lookType = 943
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
	{id = "Crystal Sword", chance = 300},
	{id = "Glacier Robe", chance = 150},
	{id = "Glacier Kilt", chance = 150},
	{id = "Small Sapphire", chance = 900, maxCount = 4},
	{id = "giant sword", chance = 560},
	{id = "warrior helmet", chance = 2820},
	{id = "blue crystal shard", chance = 6000},
	{id = "blue crystal splinter", chance = 13000},
	{id = "Titan Axe", chance = 1100},
	{id = "Warrior's Axe", chance = 400},
	{id = "Warrior's Shield", chance = 400}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -330},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -400, range = 7, radius = 6, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_PURPLEENERGY, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -250, range = 7, radius = 6, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
}

monster.defenses = {
	defense = 65,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -28},
	{type = COMBAT_DEATHDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = -9},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE, percent = -5}
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
