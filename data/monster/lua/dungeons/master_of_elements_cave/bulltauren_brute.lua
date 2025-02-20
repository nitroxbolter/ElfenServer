local mType = Game.createMonsterType("Bulltauren Brute")
local monster = {}
monster.description = "a Bulltauren Brute"
monster.experience = 10800
monster.outfit = {
	lookType = 980
}

monster.health = 9500
monster.maxHealth = 9500
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
	{id = "lesser guardian gem", chance = 24200, maxCount = 3},
	{id = "guardian gem", chance = 12000, maxCount = 2},
	{id = "greater guardian gem", chance = 9500},
	{id = "bulltaur horn", chance = 30000, maxCount = 3},
	{id = "bulltaur hoof", chance = 65000, maxCount = 3},
	{id = "bulltaur armor scrap", chance = 20000, maxCount = 2},
	{id = "strange substance", chance = 15000},
	{id = "nimmersatt's seal", chance = 2950},
	{id = "tauren claw", chance = 26500},
	{id = "tauren tooth", chance = 13000},
	{id = "crystallised blood", chance = 5800},
	{id = "icy blacksteel sword", chance = 6000},
	{id = "icy mystic blade", chance = 2000},
	{id = "icy relic sword", chance = 2900}, 
	{id = "common star inlay stone", chance = 9000},
	{id = "common two stars inlay stone", chance = 7000},
	{id = "common three stars inlay stone", chance = 6000},
	{id = "rare star inlay stone", chance = 6000},
	{id = "rare two stars inlay stone", chance = 4500},
	{id = "rare three stars inlay stone", chnace = 3000},
	{id = "star extractor", chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 115},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -430, range = 7, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -120, maxDamage = -570, shootEffect = CONST_ANI_FIRE, effect = 200, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -600, radius = 3, effect = 206, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -250, range = 7, effect = CONST_ME_MAGIC_RED, target = true}
}

monster.defenses = {
	defense = 80,
	armor = 80,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
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
