local mType = Game.createMonsterType("Butcher Ogre")
local monster = {}
monster.description = "a Butcher Ogre"
monster.experience = 8900
monster.outfit = {
	lookType = 956
}

monster.health = 14000
monster.maxHealth = 14000
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
	{id = "stone skin amulet", chance = 4920},
	{id = "knight legs", chance = 3250},
	{id = 26793, chance = 900}, 
	{id = 26795, chance = 2000},
	{id = 26799, chance = 3400, maxCount = 2},
	{id = 26798, chance = 8100, maxCount = 2},
	{id = 26806, chance = 450},
	{id = 26802, chance = 350}, 
	{id = "steel boots", chance = 1123},
	{id = "wand of inferno", chance = 2500},
	{id = 26778, chance = 300},  
	{id = 26800, chance = 4000, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -520, condition = {type = CONDITION_POISON, totalDamage = 800, interval = 4000}},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -395, maxDamage = -498, range = 7, shootEffect = 57, effect = 201, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -660, length = 8, spread = 3, effect = 200, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -350, maxDamage = -976, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -549, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
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
