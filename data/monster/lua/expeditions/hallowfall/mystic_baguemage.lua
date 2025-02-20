local mType = Game.createMonsterType("Mystic Baguemage")
local monster = {}
monster.description = "a Mystic Baguemage"
monster.experience = 30000
monster.outfit = {
	lookType = 1354
}

monster.health = 27500
monster.maxHealth = 27500
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
	{id = "Platinum Coin", chance = 40000, maxCount = 99},
	{id = "Platinum Coin", chance = 40000, maxCount = 40},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "falcon circlet", chance = 900},
	{id = "gnome legs", chance = 2000},
	{id = "toga mortis", chance = 700},
	{id = "bear skin", chance = 700},
	{id = "small sapphire", chance = 8000, maxCount = 4},
	{id = "giant sapphire", chance = 2000},
	{id = "dwarven legs", chance = 900},
	{id = "golden boots", chance = 1100},
	{id = "old stick", chance = 4000, maxCount = 2},
	{id = "naga rod", chance = 1500},
	{id = "naga wand", chance = 1500},
	{id = "dragon fruit", chance = 5000},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -1400, effect = 340, range = 7},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ARCANEDAMAGE, minDamage = -700, maxDamage = -1200, range = 7, shootEffect = 317, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_WATERDAMAGE, minDamage = -700, maxDamage = -1200, radius = 3, effect = 322, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -600, maxDamage = -1200, range = 7, shootEffect = 12, effect = 336, target = false},
}

monster.defenses = {
	defense = 80,
	armor = 80,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -22},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 11},
	{type = COMBAT_FIREDAMAGE, percent = 6},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -13},
	{type = COMBAT_HOLYDAMAGE , percent = -8},
	{type = COMBAT_DEATHDAMAGE , percent = -7},
	{type = COMBAT_WATERDAMAGE, percent = 25},
	{type = COMBAT_ARCANEDAMAGE, percent = 16},
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
