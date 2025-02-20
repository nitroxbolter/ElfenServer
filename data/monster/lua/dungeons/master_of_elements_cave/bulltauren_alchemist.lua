local mType = Game.createMonsterType("Bulltauren Alchemist")
local monster = {}
monster.description = "a Bulltauren Alchemist"
monster.experience = 9650
monster.outfit = {
	lookType = 981
}

monster.health = 8700
monster.maxHealth = 8700
monster.corpse = 26691
monster.speed = 400
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
	{id = 8472, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = "lesser marksman gem", chance = 12000, maxCount = 3},
	{id = "lesser mystic gem", chance = 18500, maxCount = 3},
	{id = "sage gem", chance = 18500, maxCount = 2},
	{id = "mystic gem", chance = 9500, maxCount = 2},
	{id = "bulltaur horn", chance = 30000, maxCount = 3},
	{id = "bulltaur hoof", chance = 65000, maxCount = 3},
	{id = "bulltaur armor scrap", chance = 20000, maxCount = 2},
	{id = "tauren claw", chance = 26500},
	{id = "tauren tooth", chance = 13000},
	{id = "amber staff", chance = 5200},
	{id = "beetle necklace", chance = 18500},
	{id = "cobra crown", chance = 2500},
	{id = "hibiscus dress", chance = 7000},
	{id = "lunar staff", chance = 4800},
	{id = "yalahari armor", chance = 1800},
	{id = "common star inlay stone", chance = 9000},
	{id = "common two stars inlay stone", chance = 7000},
	{id = "common three stars inlay stone", chance = 6000},
	{id = "rare star inlay stone", chance = 6000},
	{id = "rare two stars inlay stone", chance = 4500},
	{id = "rare three stars inlay stone", chnace = 3000},
	{id = "star extractor", chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -225, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -195, maxDamage = -270, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -175, maxDamage = -425, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -550, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -120, maxDamage = -400, range = 7, shootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -130, maxDamage = -385, range = 7, effect = 208, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -100, maxDamage = -455, range = 7, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
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
