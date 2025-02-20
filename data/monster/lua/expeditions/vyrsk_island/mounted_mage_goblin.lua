local mType = Game.createMonsterType("Mounted Mage Goblin")
local monster = {}
monster.description = "a Mounted Mage Goblin"
monster.experience = 29000
monster.outfit = {
	lookType = 1312
}

monster.health = 23000
monster.maxHealth = 23000
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
	runHealth = 1500,
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
	{id = "Platinum Coin", chance = 40000, maxCount = 99},
	{id = "Platinum Coin", chance = 40000, maxCount = 40},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "brown piece of cloth", chance = 6000},
	{id = "yellow piece of cloth", chance = 3500},
	{id = "terra boots", chance = 1720},
	{id = "spellbook of mind control", chance = 1420},
	{id = "underworld rod", chance = 3720},
	{id = "Soul Orb", chance = 3000, maxCount = 4},
	{id = "Necrotic Rod", chance = 3000},
	{id = "Magma Monocle", chance = 1500},
	{id = "springsprout rod", chance = 2510},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -700},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -1280, range = 7, shootEffect = 84, effect = 340, target = false},
	{name ="combat", interval = 1500, chance = 12, type = COMBAT_ARCANEDAMAGE, minDamage = -500, maxDamage = -1400, radius = 3, effect = 225, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_WATERDAMAGE, minDamage = -400, maxDamage = -1450, length = 5, spread = 3, effect = 283, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -1775, radius = 3, effect = 226, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -11},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = -9},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = -10},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -18},
	{type = COMBAT_DEATHDAMAGE , percent = -31},
	{type = COMBAT_WATERDAMAGE, percent = 14},
	{type = COMBAT_ARCANEDAMAGE, percent = 3},
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
