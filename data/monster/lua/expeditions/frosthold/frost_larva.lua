local mType = Game.createMonsterType("Frost Larva")
local monster = {}
monster.description = "a Frost larva"
monster.experience = 10000
monster.outfit = {
	lookType = 1317
}

monster.health = 13500
monster.maxHealth = 13500
monster.corpse = 26691
monster.speed = 160
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
	targetDistance = 3,
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
	{id = "Platinum Coin", chance = 40000, maxCount = 99},
	{id = "Platinum Coin", chance = 40000, maxCount = 40},
	{id = "green crystal shard", chance = 8000},
	{id = "blue crystal splinter", chance = 16000, maxCount = 2},
	{id = "cyan crystal fragment", chance = 13000},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -3200},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -999, maxDamage = -2000, length = 6, spread = 3, effect = 285, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -1300, range = 7, shootEffect = 65, effect = 205, target = true},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -30},
	{type = COMBAT_ENERGYDAMAGE, percent = -30},
	{type = COMBAT_EARTHDAMAGE, percent = -30},
	{type = COMBAT_FIREDAMAGE, percent = -30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = -30},
	{type = COMBAT_DEATHDAMAGE , percent = -30},
	{type = COMBAT_WATERDAMAGE, percent = -30},
	{type = COMBAT_ARCANEDAMAGE, percent = -30},
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
