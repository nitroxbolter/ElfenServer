local mType = Game.createMonsterType("Mitmah Vanguard")
local monster = {}
monster.description = "a Mitmah Vanguard"
monster.experience = 12500
monster.outfit = {
	lookType = 979
}

monster.health = 13000
monster.maxHealth = 13000
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
	{id = "greater guardian gem", chance = 9500},
	{id = "greater marksman gem", chance = 6000},
	{id = "greater sage gem", chance = 9500},
	{id = "greater mystic gem", chance = 8000},
	{id = "splintered mitmah gem", chance = 4000},
	{id = "atab's mitmah helmet", chance = 3500},
	{id = "strange substance", chance = 15000},
	{id = "idol of the forge", chance = 4800},
	{id = "nimmersatt's seal", chance = 2950},
	{id = "gold-scaled sentinel", chance = 1900},
	{id = "crystallised blood", chance = 5800},
	{id = "icy blacksteel sword", chance = 6000},
	{id = "earth mystic blade", chance = 1700},
	{id = "fiery mystic blade", chance = 1700},
	{id = "energy mystic blade", chance = 1700},
	{id = "icy mystic blade", chance = 1700},
	{id = "crystalline armor", chance = 3600},
	{id = "golden legs", chance = 2200},
	{id = "phoenix shield", chance = 150},
	{id = "common star inlay stone", chance = 9000},
	{id = "common two stars inlay stone", chance = 7000},
	{id = "common three stars inlay stone", chance = 6000},
	{id = "rare star inlay stone", chance = 6000},
	{id = "rare two stars inlay stone", chance = 4500},
	{id = "rare three stars inlay stone", chnace = 3000},
	{id = "star extractor", chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -350, maxDamage = -700},
	{name ="combat", interval = 3000, chance = 24, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -600, range = 7, radius = 3, shootEffect = 5, effect = 204, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -190, maxDamage = -350, range = 7, shootEffect = 56, effect = 215, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -700, radius = 4, effect = 200, target = false}
}

monster.defenses = {
	defense = 120,
	armor = 120,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = - 0},
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
