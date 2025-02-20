local mType = Game.createMonsterType("Terror Spider")
local monster = {}
monster.description = "a Terror Spider"
monster.experience = 55000
monster.outfit = {
	lookType = 966
}

monster.health = 100000
monster.maxHealth = 135000
monster.corpse = 0
monster.speed = 650
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4*1000,
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
	staticAttackChance = 95
}

monster.summons = {
}

monster.voices = {
}

monster.events = {
	"playerAttackSound"
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -680, condition = {type = CONDITION_POISON, totalDamage = 8, interval = 4000}},
	{name ="combat", interval = 3000, chance = 70, type = COMBAT_ICEDAMAGE, minDamage = -460, maxDamage = -917, range = 5, shootEffect = 56, effect = 202, target = false},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -650, range = 1, target = false},
	{name ="combat", interval = 1000, chance = 17, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -740, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 1000, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -450, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_ENERGY, effect = 203, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
	{name = "combat", type = COMBAT_HEALING, chance = 35, interval = 2*1000, minDamage = 500, maxDamage = 1500, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 950, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
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
