local mType = Game.createMonsterType("Hermit Crab")
local monster = {}
monster.description = "a Hermit Crab"
monster.experience = 11240
monster.outfit = {
	lookType = 1302
}

monster.health = 9000
monster.maxHealth = 9000
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
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -950},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_LIFEDRAIN, minDamage = -335, maxDamage = -880, range = 7, radius = 5, shootEffect = CONST_ANI_WHIRLWINDAXE, target = true},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -490, maxDamage = -830, range = 7, shootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 17},
	{type = COMBAT_FIREDAMAGE, percent = 6},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 7},
	{type = COMBAT_HOLYDAMAGE , percent = -13},
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
