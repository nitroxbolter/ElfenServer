local mType = Game.createMonsterType("Wild Boar")
local monster = {}
monster.description = "a Wild Boar"
monster.experience = 17400
monster.outfit = {
	lookType = 1324
}

monster.health = 14800
monster.maxHealth = 14800
monster.corpse = 0
monster.speed = 250
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -750, maxDamage = -1600},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -865, maxDamage = -1535, radius = 4, effect = 350, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 65},
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
