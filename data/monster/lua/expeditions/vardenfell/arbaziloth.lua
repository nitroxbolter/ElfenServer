local mType = Game.createMonsterType("Arbaziloth")
local monster = {}
monster.description = "a Arbaziloth"
monster.experience = 45000
monster.outfit = {
	lookType = 1370
}

monster.health = 40000
monster.maxHealth = 40000
monster.corpse = 26691
monster.speed = 500
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
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000},
	{id = "small diamond", chance = 65560, maxCount = 7},
	{id = "gold ingot", chance = 25560},
	{id = "blue crystal splinter", chance = 25560},
	{id = "cyan crystal fragment", chance = 25560},
	{id = "vile axe", chance = 7000},
	{id = "blue gem", chance = 65560},
	{id = "giant sword", chance = 13500},
	{id = "twiceslicer", chance = 9500},
	{id = "golden legs", chance = 4000},
	{id = "green crystal fragment", chance = 9500},
	{id = "crown armor", chance = 7500},
	{id = "mystical ribbon", chance = 3000},
	{id = "viscosity", chance = 6000},
	{id = "mummified demon finger", chance = 12500},
	{id = "demonic core essence", chance = 9500},
	{id = "demon claws", chance = 10000, maxCount = 2},
	{id = "demon skull", chance = 6000, maxCount = 2},
	{id = "arbaziloth shoulder", chance = 2000},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -888, maxDamage = -1500},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_PHYSICALDAMAGE, minDamage = -750, maxDamage = -1750, length = 8, spread = 3, effect = 285, target = false},
	{name ="combat", interval = 4000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -900, maxDamage = -1900, radius = 3, shootEffect = 84, effect = 297, target = true},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_EARTHDAMAGE, minDamage = -900, maxDamage = -1700, range = 4, shootEffect = 83, effect = 349, target = true}
}

monster.defenses = {
	defense = 130,
	armor = 130,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 17},
	{type = COMBAT_ENERGYDAMAGE, percent = 17},
	{type = COMBAT_EARTHDAMAGE, percent = 17},
	{type = COMBAT_FIREDAMAGE, percent = 17},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 17},
	{type = COMBAT_HOLYDAMAGE , percent = 17},
	{type = COMBAT_DEATHDAMAGE , percent = 17},
	{type = COMBAT_WATERDAMAGE, percent = 17},
	{type = COMBAT_ARCANEDAMAGE, percent = 17},
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
