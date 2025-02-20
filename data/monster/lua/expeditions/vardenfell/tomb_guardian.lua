local mType = Game.createMonsterType("Tomb Guardian")
local monster = {}
monster.description = "a Tomb Guardian"
monster.experience = 29000
monster.outfit = {
	lookType = 1386
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
	{id = "Crystal Coin", chance = 40000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "crushed bone", chance = 4800, maxCount = 2},
	{id = "woven fabric", chance = 4000},
	{id = "diamond sceptre", chance = 2000},
	{id = "shadow sceptre", chance = 2000},
	{id = "abyss hammer", chance = 2000},
	{id = "crown armor", chance = 3000},
	{id = "small emerald", chance = 10190, maxCount = 3},
	{id = "small amethyst", chance = 14570, maxCount = 3},
	{id = "red gem", chance = 9800, maxCount = 5},
	{id = "orb", chance = 66000, maxCount = 5},
	{id = "might ring", chance = 6990},
	{id = "devil helmet", chance = 14990},
	{id = "demonrage sword", chance = 2000},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -650, maxDamage = -1300},
	{name ="combat", interval = 2750, chance = 20, type = COMBAT_ARCANEDAMAGE, minDamage = -500, maxDamage = -1500, range = 5, shootEffect = 60, effect = 208, target = true},
	{name ="combat", interval = 2000, chance = 60, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -1400, radius = 3, effect = 254, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -1760, length = 5, spread = 0, effect = 308, target = false},

}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 7},
	{type = COMBAT_EARTHDAMAGE, percent = -3},
	{type = COMBAT_FIREDAMAGE, percent = -11},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 4},
	{type = COMBAT_HOLYDAMAGE , percent = -9},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = -25},
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
