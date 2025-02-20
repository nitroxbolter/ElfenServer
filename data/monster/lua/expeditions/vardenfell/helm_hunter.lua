local mType = Game.createMonsterType("Helm Hunter")
local monster = {}
monster.description = "a Helm Hunter"
monster.experience = 40000
monster.outfit = {
	lookType = 1380
}

monster.health = 28000
monster.maxHealth = 28000
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
	convinceable = false,
	pushable = true,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.summons = {
}

monster.events = {
	"playerAttackSound"
}

monster.voices = {
}

monster.loot = { 
	{id = "Crystal Coin", chance = 70000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "loaded leather", chance = 4800},
	{id = "eviscerated eye", chance = 3000},
	{id = "assassin star", chance = 10780, maxCount = 5},
	{id = "mercenary sword", chance = 6890},
	{id = "Stone Skin Amulet", chance = 9200},
	{id = "arcane arrow", chance = 4000, maxCount = 10},
	{id = "arcane bolt", chance = 4000, maxCount = 10},
	{id = "skull staff", chance = 7500},
	{id = "pharaoh sword", chance = 6300},
	{id = "fire axe", chance = 8750},
	{id = "phoenix shield", chance = 1000},
	{id = "black pearl", chance = 7000, maxCount = 4},
	{id = "ravager's axe", chance = 3300},
	{id = "steel boots", chance = 2500},
	{id = 2668,  chance = 35000, maxCount = 3},
	{id = "monstrosity", chance = 7000}


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -1800},
	{name ="combat", interval = 1000, chance = 6, type = COMBAT_MANADRAIN, minDamage = -950, maxDamage = -1450, radius = 5, effect = 252, target = false},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -710, maxDamage = -1600, range = 7, radius = 7, shootEffect = 84, effect = 276, target = true},
	{name ="firefield", interval = 1000, chance = 10, range = 7, radius = 4, shootEffect = 84, target = true},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ARCANEDAMAGE, minDamage = -800, maxDamage = -1650, length = 8, spread = 3, effect = 229, target = false}

}

monster.defenses = {
	defense = 130,
	armor = 130,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -8},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -7},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = 100},
}

monster.immunities = {
	{type = "fire", condition = true},
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
