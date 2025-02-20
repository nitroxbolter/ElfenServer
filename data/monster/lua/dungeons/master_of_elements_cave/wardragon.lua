local mType = Game.createMonsterType("Wardragon")
local monster = {}
monster.description = "a Wardragon"
monster.experience = 10000
monster.outfit = {
	lookType = 977
}

monster.health = 10800
monster.maxHealth = 10800
monster.corpse = 26691
monster.speed = 420
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
	targetDistance = 3,
	staticAttackChance = 90,
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
	{id = 2152, chance = 100000, maxCount = 17}, 
	{id = 7591, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = "lesser mystic gem", chance = 18500, maxCount = 3},
	{id = "mystic gem", chance = 9500, maxCount = 2},
	{id = "greater mystic gem", chance = 8000},
	{id = "strange substance", chance = 15000},
	{id = "idol of the forge", chance = 4800},
	{id = "nimmersatt's seal", chance = 2950},
	{id = "molten dragon essence", chance = 6000},
	{id = "strange poison gland", chance = 14000},
	{id = "crystallised blood", chance = 5800},
	{id = "tempest shield", chance = 100},
	{id = "earth heroic axe", chance = 1700},
	{id = "energy heroic axe", chance = 1700},
	{id = "fiery heroic axe", chance = 1700},
	{id = "icy heroic axe", chance = 1700},
	{id = "heroic axe", chance = 1700},
	{id = "common star inlay stone", chance = 9000},
	{id = "common two stars inlay stone", chance = 7000},
	{id = "common three stars inlay stone", chance = 6000},
	{id = "rare star inlay stone", chance = 6000},
	{id = "rare two stars inlay stone", chance = 4500},
	{id = "rare three stars inlay stone", chnace = 3000},
	{id = "star extractor", chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -480},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -400, range = 7, radius = 4, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -125, maxDamage = -600, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -390, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -180, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -690, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
}

monster.defenses = {
	defense = 70,
	armor = 50,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
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
