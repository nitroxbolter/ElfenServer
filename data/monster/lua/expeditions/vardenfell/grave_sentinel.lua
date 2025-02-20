local mType = Game.createMonsterType("Grave Sentinel")
local monster = {}
monster.description = "a Grave Sentinel"
monster.experience = 24000
monster.outfit = {
	lookType = 1381
}

monster.health = 19500
monster.maxHealth = 19500
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
	{id = "crushed bone", chance = 4800, maxCount = 2},
	{id = "woven fabric", chance = 4000},
	{id = "cobra crown", chance = 2400},
	{id = "small topaz", chance = 11520, maxCount = 10},
	{id = "blue gem", chance = 21892},
	{id = "yellow gem", chance = 29460},
	{id = "Hailstorm Rod", chance = 6470},
	{id = "ring of healing", chance = 20000},
	{id = "Skull Staff", chance = 13790},
	{id = "runed sword", chance = 6666},
	{id = "djinn blade", chance = 200},
	{id = "Grasshopper Legs", chance = 13790},
	{id = "ham",  chance = 35000, maxCount = 3},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1600},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -620, maxDamage = -1905, range = 7, radius = 1, shootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -650, maxDamage = -1850, radius = 4, effect = 219, target = false},
	{name ="speed", interval = 2000, chance = 15, speed = -300, range = 7, shootEffect = CONST_ANI_POISON, target = true, duration = 30000}
}

monster.defenses = {
	defense = 80,
	armor = 80,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 3},
	{type = COMBAT_ENERGYDAMAGE, percent = -7},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -4},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -3},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = -11},
	{type = COMBAT_ARCANEDAMAGE, percent = -10},
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
