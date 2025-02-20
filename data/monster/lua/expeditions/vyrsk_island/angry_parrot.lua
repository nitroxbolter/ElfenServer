local mType = Game.createMonsterType("Angry Parrot")
local monster = {}
monster.description = "a Angry Parrot"
monster.experience = 5500
monster.outfit = {
	lookType = 1304
}

monster.health = 5200
monster.maxHealth = 5200
monster.corpse = 26691
monster.speed = 450
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
	runHealth = 15,
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
	{id = "gold coin", chance = 50000, maxCount = 100},
	{id = "platinum coin", chance = 58670, maxCount = 2},
	{id = "fire axe", chance = 330},
	{id = "skull staff", chance = 280},
	{id = "brown mushroom", chance = 14920, maxCount = 2},
	{id = "strong health potion", chance = 11050, maxCount = 3},
	{id = "great mana potion", chance = 10770, maxCount = 2},
	{id = "terra legs", chance = 50},
	{id = "terra boots", chance = 880},
	{id = "small topaz", chance = 9780},
	{id = "basalt figurine", chance = 8560},
	{id = "angry parrot feather", chance = 3750},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -780},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -450, maxDamage = -900, length = 6, spread = 3, effect = 348, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -650, maxDamage = -850, radius = 5, effect = 343, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -1200, range = 7, shootEffect = 32, effect = 350, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -350, maxDamage = -1250, range = 7, radius = 2, shootEffect = 64, effect = 321, target = true},
	{name ="drunk", interval = 2000, chance = 10, radius = 4, effect = 335, target = false, duration = 6000}
}

monster.defenses = {
	defense = 80,
	armor = 40,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_ENERGYDAMAGE, percent = -12},
	{type = COMBAT_EARTHDAMAGE, percent = 7},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -9},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
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
