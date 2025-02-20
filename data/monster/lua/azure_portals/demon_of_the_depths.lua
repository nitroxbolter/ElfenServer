local mType = Game.createMonsterType("Demon of the Depths")
local monster = {}
monster.description = "a Demon of the Depths"
monster.experience = 10500
monster.outfit = {
	lookType = 957
}

monster.health = 16800
monster.maxHealth = 16800
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
	{id = "Life Ring", chance = 6010},
	{id = "Warrior's Axe", chance = 6950},
	{id = 26789, chance = 5900}, 
	{id = 26788, chance = 9000},
	{id = 26783, chance = 3400, maxCount = 2},
	{id = 26799, chance = 8100, maxCount = 2},
	{id = 26803, chance = 750},
	{id = 26785, chance = 8350, maxCount = 3},
	{id = 26790, chance = 11500, maxCount = 2}, 
	{id = "boots of haste", chance = 1500},
	{id = "ring of healing", chance = 23000},
	{id = 26778, chance = 300},  
	{id = 26800, chance = 4000, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -450, length = 6, spread = 3, effect = CONST_ME_PURPLEENERGY, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -550, length = 8, spread = 3, effect = CONST_ME_YELLOWENERGY, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -430, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true},
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
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
