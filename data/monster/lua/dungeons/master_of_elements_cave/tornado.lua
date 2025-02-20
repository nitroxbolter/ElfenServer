local mType = Game.createMonsterType("Tornado")
local monster = {}
monster.description = "a Tornado"
monster.experience = 0
monster.outfit = {
	lookType = 983
}

monster.health = 5000
monster.maxHealth = 5000
monster.corpse = 0
monster.speed = 200
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.getLevel = {
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
	targetDistance = 5,
	staticAttackChance = 90,
	healthHidden = true,
	runHealth = 5000
}
monster.events = {
	"playerAttackSound"
}
monster.summons = {
	
}

monster.voices = {
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -50},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -70, maxDamage = -90, range = 7, shootEffect = CONST_ANI_ENERGY, effect = 214, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
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
