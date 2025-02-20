local mType = Game.createMonsterType("Colossal Ice Monkey")
local monster = {}
monster.description = "a Colossal Ice Monkey"
monster.experience = 8380
monster.outfit = {
	lookType = 955
}

monster.health = 11800
monster.maxHealth = 11800
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
	{id = "Silver Amulet", chance = 3800},
	{id = "Zaoan armor", chance = 1230},
	{id = 26783, chance = 900}, 
	{id = 26787, chance = 9000},
	{id = 26792, chance = 14400, maxCount = 2},
	{id = 26798, chance = 8100, maxCount = 2},
	{id = 26807, chance = 700},
	{id = 26802, chance = 350}, 
	{id = "terra legs", chance = 2500},
	{id = "butterfly ring", chance = 370}, 
	{id = 26778, chance = 300},  
	{id = 26800, chance = 4000, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -630, condition = {type = CONDITION_POISON, totalDamage = 15, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -590, range = 3, radius = 1, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_EXPLOSIONHIT, target = true}
}

monster.defenses = {
	defense = 70,
	armor = 70,
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 150, maxDamage = 300, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -9},
	{type = COMBAT_DEATHDAMAGE, percent = -9},
	{type = COMBAT_ENERGYDAMAGE, percent = -9},
	{type = COMBAT_FIREDAMAGE, percent = -9},
	{type = COMBAT_EARTHDAMAGE, percent = 16},
	{type = COMBAT_ICEDAMAGE, percent = 16},
	{type = COMBAT_HOLYDAMAGE, percent = -9}
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
