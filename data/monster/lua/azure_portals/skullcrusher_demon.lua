local mType = Game.createMonsterType("Skullcrusher Demon")
local monster = {}
monster.description = "a Skullcrusher Demon"
monster.experience = 10500
monster.outfit = {
	lookType = 959
}

monster.health = 15000
monster.maxHealth = 15000
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
	{id = "stealth ring", chance = 6960},
	{id = "giant sword", chance = 3160},
	{id = "crusader helmet", chance = 1900},
	{id = "butcher's axe", chance = 1270},
	{id = 26795, chance = 5900}, 
	{id = 26788, chance = 13500, maxCount = 2},
	{id = 26784, chance = 13400, maxCount = 2},
	{id = 26782, chance = 11100, maxCount = 2},
	{id = 26811, chance = 550},
	{id = 26799, chance = 1950},
	{id = 26800, chance = 2950},
	{id = 26801, chance = 3950},
	{id = 26778, chance = 300},  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -400, effect = 184},
	{name ="combat", interval = 6000, chance = 22, type = COMBAT_HOLYDAMAGE, minDamage = -200, maxDamage = -550, range = 7, radius = 4, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 6000, chance = 12, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -700, range = 7, effect = 201, target = true},
	{name ="combat", interval = 4000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -500, radius = 4, shootEffect = 56, effect = 198, target = true}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
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
