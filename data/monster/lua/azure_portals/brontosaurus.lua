local mType = Game.createMonsterType("Brontosaurus")
local monster = {}
monster.description = "a Brontosaurus"
monster.experience = 8800
monster.outfit = {
	lookType = 954
}

monster.health = 13000
monster.maxHealth = 13000
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
	{id = 2152, chance = 100000, maxCount = 40}, 
	{id = 8472, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = "energy ring", chance = 2450},
	{id = "life ring", chance = 2100},
	{id = 26782, chance = 9900}, 
	{id = 26786, chance = 15000},
	{id = 26791, chance = 4400},
	{id = 26800, chance = 2100, maxCount = 2},
	{id = 26788, chance = 1900},
	{id = 26804, chance = 600},
	{id = 15408, chance = 630}, 
	{id = "crystalline armor", chance = 1170}, 
	{id = "butterfly ring", chance = 1370}, 
	{id = 26778, chance = 300},  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -360, condition = {type = CONDITION_POISON, totalDamage = 700, interval = 4000}},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DROWNDAMAGE, minDamage = -225, maxDamage = -535, range = 7, radius = 2, effect = 197, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -188, maxDamage = -550, range = 7, shootEffect = 56, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -225, maxDamage = -360, radius = 5, effect = 199, target = false}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_DEATHDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
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
