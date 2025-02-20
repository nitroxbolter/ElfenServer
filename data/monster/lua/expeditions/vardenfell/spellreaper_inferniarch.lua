local mType = Game.createMonsterType("Spellreaper Inferniarch")
local monster = {}
monster.description = "a Spellreaper Inferniarch"
monster.experience = 31000
monster.outfit = {
	lookType = 1364
}

monster.health = 29500
monster.maxHealth = 29500
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
	targetDistance = 4,
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
	{id = "Crystal Coin", chance = 40000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000},
	{id = "gold ingot", chance = 65560},
	{id = "glacier robe", chance = 25560},
	{id = "elven mail", chance = 1600},
	{id = "magma legs", chance = 5000},
	{id = "magma monocle", chance = 7000},
	{id = "spellbook of vigilance", chance = 5000},
	{id = "spellbook of ancient arcana", chance = 2000},
	{id = "violet gem", chance = 25560},
	{id = "blue gem", chance = 45560},
	{id = "wood cape", chance = 16500},
	{id = "northwind rod", chance = 13500},
	{id = "springsprout rod", chance = 11500},
	{id = "sacred tree amulet", chance = 8500},
	{id = "crystalline armor", chance = 4500},
	{id = "rubber cap", chance = 3500},
	{id = "fur armor", chance = 2500},
	{id = "mystical ribbon", chance = 2000},
	{id = "gorger antlers", chance = 9000, maxCount = 2},
	{id = "spellreaper staff totem", chance = 5000},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -620, maxDamage = -1400, range = 7, shootEffect = 5, effect = 238, target = true},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_WATERDAMAGE, minDamage = -750, maxDamage = -1200, range = 7, shootEffect = 68, effect = 343, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -1200, range = 7, shootEffect = 84, effect = 340, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -650, maxDamage = -1500, range = 7, shootEffect = 32, effect = 338, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ARCANEDAMAGE, minDamage = -620, maxDamage = -1440, range = 7, shootEffect = 70, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = -700, radius = 1, target = true, duration = 30*1000, effect = CONST_ME_MAGIC_RED},
}

monster.defenses = {
	defense = 60,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -7},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -14},
	{type = COMBAT_DEATHDAMAGE , percent = 8},
	{type = COMBAT_WATERDAMAGE, percent = 4},
	{type = COMBAT_ARCANEDAMAGE, percent = 7},
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
