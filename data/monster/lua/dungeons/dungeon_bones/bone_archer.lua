local mType = Game.createMonsterType("Bone Archer")
local monster = {}
monster.description = "a Bone Archer"
monster.experience = 5100
monster.outfit = {
	lookType = 947
}

monster.health = 4950
monster.maxHealth = 4950
monster.corpse = 26691
monster.speed = 280
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.getLevel = {
	minLevel = 1,
	maxLevel = 50
}
monster.events = {
	"playerAttackSound"
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
	staticAttackChance = 90,
	runHealth = 900
}

monster.summons = {
}

monster.voices = {
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100}, 
	{id = 2152, chance = 100000, maxCount = 6}, 
	{id = 8472, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = 7591, chance = 9700, maxCount = 2}, 
	{id = 18418, chance = 7900}, 
	{id = 18420, chance = 6000}, 
	{id = 18414, chance = 4400},
	{id = 18413, chance = 4000},
	{id = 2156, chance = 2600},
	{id = 26199, chance = 630}, 
	{id = 7901, chance = 520}, 
	{id = 2153, chance = 370}, 
	{id = 26185, chance = 370}, 
	{id = 26200, chance = 300}, 
	{id = 26187, chance = 220} 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -80, maxDamage = -200},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -450, range = 7, shootEffect = CONST_ANI_ARROW, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -200, maxDamage = -340, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="drunk", interval = 2000, chance = 10, length = 3, spread = 2, effect = CONST_ME_SOUND_RED, target = false, duration = 5000}
}

monster.defenses = {
	defense = 55,
	armor = 55,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_DEATHDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_ICEDAMAGE, percent = 0},
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
