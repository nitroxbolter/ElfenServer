local mType = Game.createMonsterType("Axebringer Fiend")
local monster = {}
monster.description = "a Axebringer Fiend"
monster.experience = 35000
monster.outfit = {
	lookType = 1330
}

monster.health = 31500
monster.maxHealth = 31500
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
	{id = "Spiked Squelcher", chance = 6200},
	{id = "Knight Armor", chance = 21980},
	{id = "Knight Legs", chance = 18000},
	{id = "War Axe", chance = 11230},
	{id = "Violet Gem", chance = 5060},
	{id = "Small Amethyst", chance = 9060, maxCount = 8},
	{id = "Small Topaz", chance = 7000, maxCount = 8},
	{id = "Small Emerald", chance = 5000, maxCount = 8},
	{id = "Green Gem", chance = 64880, maxCount = 2},
	{id = "Golden Armor", chance = 1040},
	{id = "Mastermind Shield", chance = 920},
	{id = "emerald bangle", chance = 3950},
	{id = "strange talisman", chance = 2630},
	{id = "premature bone", chance = 4000, maxCount = 2},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -2000},
	{name ="combat", interval = 1700, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -800, maxDamage = -1700, radius = 3, shootEffect = CONST_ANI_ENVENOMEDARROW, target = true},
	{name ="combat", interval = 1700, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -1200, maxDamage = -1850, length = 4, spread = 3, effect = 247, target = false},
	{name ="combat", interval = 1700, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -1150, maxDamage = -2000, radius = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1700, chance = 35, type = COMBAT_HOLYDAMAGE, minDamage = -950, maxDamage = -1550, radius = 3, effect = CONST_ME_HOLYAREA, target = false},
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 7},
	{type = COMBAT_EARTHDAMAGE, percent = 4},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -27},
	{type = COMBAT_HOLYDAMAGE , percent = 9},
	{type = COMBAT_DEATHDAMAGE , percent = 17},
	{type = COMBAT_WATERDAMAGE, percent = -30},
	{type = COMBAT_ARCANEDAMAGE, percent = -11},
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
