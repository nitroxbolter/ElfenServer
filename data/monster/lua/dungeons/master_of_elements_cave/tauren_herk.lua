local mType = Game.createMonsterType("Tauren Herk")
local monster = {}
monster.description = "a Tauren Herk"
monster.experience = 9800
monster.outfit = {
	lookType = 976
}

monster.health = 9200
monster.maxHealth = 9200
monster.corpse = 26691
monster.speed = 400
monster.maxSummons = 2
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

monster.summons = {
}
monster.events = {
	"playerAttackSound"
}
monster.voices = {
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 17}, 
	{id = 7591, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = "lesser sage gem", chance = 30500, maxCount = 3},
	{id = "sage gem", chance = 18500, maxCount = 2},
	{id = "mystic gem", chance = 9500, maxCount = 2},
	{id = "greater sage gem", chance = 9500},
	{id = "bulltaur horn", chance = 30000, maxCount = 3},
	{id = "bulltaur hoof", chance = 65000, maxCount = 3},
	{id = "bulltaur armor scrap", chance = 20000, maxCount = 2},
	{id = "strange substance", chance = 15000},
	{id = "idol of the forge", chance = 4800},
	{id = "strange eye", chance = 10800, maxCount = 2},
	{id = "strange poison gland", chance = 14000},
	{id = "chaos mace", chance = 3900},
	{id = "composite hornbow", chance = 2100},
	{id = "daramian mace", chance = 41000},
	{id = 6301, chance = 15000},
	{id = "djinn blade", chance = 4000},
	{id = "krimhorn helmet", chance = 37000},
	{id = "leopard armor", chance = 22000},
	{id = "mastermind shield", chance = 2000},
	{id = "skull helmet", chance = 2000},
	{id = "common star inlay stone", chance = 9000},
	{id = "common two stars inlay stone", chance = 7000},
	{id = "common three stars inlay stone", chance = 6000},
	{id = "rare star inlay stone", chance = 6000},
	{id = "rare two stars inlay stone", chance = 4500},
	{id = "rare three stars inlay stone", chnace = 3000},
	{id = "star extractor", chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -250, maxDamage = -400, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -150, maxDamage = -480, radius = 4, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -270, maxDamage = -500, range = 7, shootEffect = 55, effect = 188, target = true},
}

monster.defenses = {
	defense = 65,
	armor = 65,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -11},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
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
