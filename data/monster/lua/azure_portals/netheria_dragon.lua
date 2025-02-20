local mType = Game.createMonsterType("Netheria Dragon")
local monster = {}
monster.description = "a Netheria Dragon"
monster.experience = 9850
monster.outfit = {
	lookType = 969
}

monster.health = 10500
monster.maxHealth = 10500
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
	{id = "dragon scale mail", chance = 1200},
	{id = "royal helmet", chance = 750},
	{id = "Terra Hood", chance = 5500},
	{id = "Terra Legs", chance = 2500},
	{id = "bonelord shield", chance = 8000},
	{id = 26790, chance = 8500, maxCount = 4}, 
	{id = 26781, chance = 10000, maxCount = 2},
	{id = 26798, chance = 17400, maxCount = 3},
	{id = 26787, chance = 10000, maxCount = 2},
	{id = 26793, chance = 6550, maxCount = 2},
	{id = 26801, chance = 11950, maxCount = 4},
	{id = 26807, chance = 800},
	{id = 26778, chance = 300},  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -777},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -570, range = 7, target = false},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -400, length = 8, spread = 3, effect = 200, target = false},
	{name ="energy strike", interval = 2000, chance = 10, minDamage = -10, maxDamage = -200, range = 1, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -225, maxDamage = -475, radius = 4, target = false}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
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
