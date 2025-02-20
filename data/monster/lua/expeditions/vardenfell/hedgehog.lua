local mType = Game.createMonsterType("Hedgehog")
local monster = {}
monster.description = "a Hedgehog"
monster.experience = 37000
monster.outfit = {
	lookType = 1379
}

monster.health = 39000
monster.maxHealth = 39000
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
	{id = "skullcracker armor", chance = 3270},
	{id = "eviscerated eye", chance = 2210},
	{id = "underworld rod", chance = 19010},
	{id = "poison fin", chance = 10000, maxCount = 2},
	{id = "robust scale", chance = 4000, maxCount = 2},
	{id = "water arrow", chance = 4000, maxCount = 10},
	{id = "water bolt", chance = 4000, maxCount = 10},
	{id = "emerald bangle", chance = 7500},
	{id = "energy ring", chance = 33150},
	{id = "soul orb", chance = 31111},
	{id = "dragon robe", chance = 3000},
	{id = "blue robe", chance = 6000},
	{id = "demonic essence", chance = 12000, maxCount = 2},
	{id = "platinum amulet", chance = 15000},
	{id = "sudden death rune", chance = 4200, maxCount = 3},
	{id = "avalanche rune", chance = 4200, maxCount = 3},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -1600},
	{name ="combat", interval = 1800, chance = 10, type = COMBAT_ARCANEDAMAGE, minDamage = -700, maxDamage = -1985, length = 7, spread = 3, effect = 288, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_ARCANEDAMAGE, minDamage = -650, maxDamage = -1590, radius = 6, effect = 294, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1750, radius = 6, effect = 285, target = false},

}

monster.defenses = {
	defense = 170,
	armor = 170,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 22},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10},
	{type = COMBAT_WATERDAMAGE, percent = 10},
	{type = COMBAT_ARCANEDAMAGE, percent = 10},
}

monster.immunities = {
	{type = "fire", condition = false},
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
