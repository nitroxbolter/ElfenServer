local mType = Game.createMonsterType("Deep Necromancer")
local monster = {}
monster.description = "a Deep Necromancer"
monster.experience = 55000
monster.outfit = {
	lookType = 965
}

monster.health = 110000
monster.maxHealth = 110000
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
	{name ="melee", interval = 2000, chance = 100, skill = 150, attack = 150},
	{name ="combat", interval = 2000, chance = 21, type = COMBAT_ENERGYDAMAGE, minDamage = -430, maxDamage = -1050, range = 6, radius = 2, shootEffect = 5, effect = 204, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -820, range = 7, shootEffect = 56, effect = 205, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 500, maxDamage = 1500, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 950, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 13},
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
