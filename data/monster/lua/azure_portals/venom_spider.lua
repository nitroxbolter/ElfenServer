local mType = Game.createMonsterType("Venom Spider")
local monster = {}
monster.description = "a Venom Spider"
monster.experience = 9750
monster.outfit = {
	lookType = 967
}

monster.health = 10600
monster.maxHealth = 10600
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
	{id = "hammer of wrath", chance = 3500},
	{id = "ruthless axe", chance = 2500},
	{id = "jade hammer", chance = 1500},
	{id = "crystal crossbow", chance = 1500},
	{id = 26797, chance = 8500, maxCount = 4}, 
	{id = 26798, chance = 10000, maxCount = 8},
	{id = 26782, chance = 17400, maxCount = 3},
	{id = 26781, chance = 10000, maxCount = 2},
	{id = 26791, chance = 6550, maxCount = 2},
	{id = 26800, chance = 11950, maxCount = 3},
	{id = 26802, chance = 450},
	{id = 26778, chance = 300},  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -150, maxDamage = -500, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -350, radius = 4, effect = CONST_ME_SMALLPLANTS, target = true},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_HOLYDAMAGE, minDamage = -150, maxDamage = -400, radius = 4, effect = 201, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -600, range = 7, shootEffect = 55, effect = 183, target = true}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = -9},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
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
