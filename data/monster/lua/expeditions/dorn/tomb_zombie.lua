local mType = Game.createMonsterType("Tomb Zombie")
local monster = {}
monster.description = "a Tomb Zombie"
monster.experience = 9999
monster.outfit = {
	lookType = 1155
}

monster.health = 7000
monster.maxHealth = 7000
monster.corpse = 0
monster.speed = 110
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4000,
	chance = 20
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
	runHealth = 0
}

monster.summons = {
}

monster.events = {
	"playerAttackSound"
}

monster.voices = {
}

monster.loot = {  
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -999, maxDamage = -2500},
	{name ="combat", interval = 1500, chance = 14, type = COMBAT_POISONDAMAGE, minDamage = -700, maxDamage = -1250, range = 7, shootEffect = 83, effect = 342, target = false},
	{name ="combat", interval = 2000, chance = 11, type = COMBAT_LIFEDRAIN, minDamage = -500, maxDamage = -1385, radius = 3, effect = 348, target = false},
}

monster.defenses = {
	defense = 40,
	armor = 40,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
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
