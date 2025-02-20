local mType = Game.createMonsterType("Swamp Monster")
local monster = {}
monster.description = "a Swamp Monster"
monster.experience = 31000
monster.outfit = {
	lookType = 1349
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
	{id = "daramian waraxe", chance = 9170},
	{id = 2747, chance = 70000},
	{id = "sudden death rune", chance = 17300},
	{id = "skull staff", chance = 9130},
	{id = "skullcracker armor", chance = 2270},
	{id = "underworld rod", chance = 6910},
	{id = "orichalcum pearl", chance = 5400, maxCount = 4},
	{id = "boots of haste", chance = 1540},
	{id = "crown armor", chance = 3400},
	{id = "mysterious voodoo skull", chance = 3333},
	{id = "premature bone", chance = 4000},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}
	

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1720, condition = {type = CONDITION_BEWITCHED, totalDamage = 900, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -500, maxDamage = -1420, range = 1, target = false},
	{name ="drunk", interval = 2000, chance = 10, range = 7, radius = 4, effect = 331, target = false, duration = 3000},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -820, maxDamage = -1280, range = 1, effect = 327, target = false}
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -9},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -3},
	{type = COMBAT_FIREDAMAGE, percent = -11},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -7},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 9},
	{type = COMBAT_WATERDAMAGE, percent = -18},
	{type = COMBAT_ARCANEDAMAGE, percent = 15},
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
