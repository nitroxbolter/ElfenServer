local mType = Game.createMonsterType("Bloodthirst Bulgeye")
local monster = {}
monster.description = "a Bloodthirst Bulgeye"
monster.experience = 30000
monster.outfit = {
	lookType = 1352
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
	{id = "Platinum Coin", chance = 40000, maxCount = 99},
	{id = "Platinum Coin", chance = 40000, maxCount = 40},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "boots of haste", chance = 2800},
	{id = "demon shield", chance = 2100},
	{id = "devil helmet", chance = 11000},
	{id = "dragon hammer", chance = 22500},
	{id = "fire axe", chance = 9000},
	{id = "gold ring", chance = 2800},
	{id = "falcon shield", chance = 700},
	{id = "glooth club", chance = 10500},
	{id = "glooth cape", chance = 6000},
	{id = "old stick", chance = 4000, maxCount = 2},
	{id = "dragon fruit", chance = 5000},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -650, maxDamage = -1900},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -700, maxDamage = -1800, range = 7, radius = 1, shootEffect = 83, effect = 183, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_MANADRAIN, minDamage = -1000, maxDamage = -1600, radius = 8, effect = 321, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -888, maxDamage = -1555, range = 7, shootEffect = 69, effect = 326, target = false},
}

monster.defenses = {
	defense = 80,
	armor = 80,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = 0},
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
