local mType = Game.createMonsterType("Azure Guard")
local monster = {}
monster.description = "a Azure Guard"
monster.experience = 9750
monster.outfit = {
	lookType = 958
}

monster.health = 12000
monster.maxHealth = 12000
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
	{id = "demonic essence", chance = 4300},
	{id = "talon", chance = 8990},
	{id = "giant sword", chance = 3500},
	{id = "demon shield", chance = 2000},
	{id = "magic plate armor", chance = 700},
	{id = 26797, chance = 11900}, 
	{id = 26799, chance = 8000},
	{id = 26785, chance = 3400, maxCount = 2},
	{id = 26798, chance = 8100, maxCount = 2},
	{id = 26802, chance = 400},
	{id = 26803, chance = 300}, 
	{id = "guardian boots", chance = 800},
	{id = "underworld rod", chance = 2200},
	{id = "wand of starstorm", chance = 1360},
	{id = 26778, chance = 300},  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -675},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -550, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 4000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -500, radius = 3, shootEffect = 56, effect = 205, target = true},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -500, range = 4, shootEffect = 19, effect = 207, target = true}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
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
