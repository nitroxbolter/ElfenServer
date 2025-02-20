local mType = Game.createMonsterType("Arbaziloth Master")
local monster = {}
monster.description = "a Arbaziloth Master"
monster.experience = 75000
monster.outfit = {
	lookType = 1371
}

monster.health = 80000
monster.maxHealth = 80000
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
	{id = "Crystal Coin", chance = 40000, maxCount = 10},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000},
	{id = "giant sapphire", chance = 31500},
	{id = "giant emerald", chance = 31500},
	{id = "mastermind shield", chance = 17500},
	{id = "spellbook of warding", chance = 6500},
	{id = "dark lord's cape", chance = 3000},
	{id = "dragon robe", chance = 5000},
	{id = "chain bolter", chance = 1000},
	{id = "ruthless axe", chance = 1000},
	{id = "mythril axe", chance = 1000},
	{id = "lavos armor", chance = 800};
	{id = "obsidian truncheon", chance = 800},
	{id = "muck rod", chance = 1800},
	{id = "swan feather cloak", chance = 3000},
	{id = "magic plate armor", chance = 2000},
	{id = "sun catcher", chance = 1800},
	{id = "moon mirror", chance = 1800},
	{id = "starlight vial", chance = 1800},
	{id = "dawnfire sherwani", chance = 2000},
	{id = "midnight tunic", chance = 2000},
	{id = "naga wand", chance = 1800},
	{id = "naga quiver", chance = 2000},
	{id = "mystical ribbon", chance = 4000},
	{id = "demonic matter", chance = 4000},
	{id = "viscosity", chance = 18000},
	{id = "mummified demon finger", chance = 18500},
	{id = "demonic core essence", chance = 11500},
	{id = "demon claws", chance = 13000, maxCount = 2},
	{id = "demon skull", chance = 10000, maxCount = 2},
	{id = "arbaziloth shoulder", chance = 4000},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -900, maxDamage = -3100},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1200, maxDamage = -2200, length = 8, spread = 3, effect = 299, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1300, maxDamage = -2800, radius = 1, shootEffect = 79, effect = 303, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -1200, maxDamage = -2650, length = 5, spread = 2, effect = 229, target = false},
	{name ="speed", interval = 2000, chance = 15, speed = -800, length = 8, spread = 3, effect = 325, target = false, duration = 7500},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ARCANEDAMAGE, minDamage = -1175, maxDamage = -2650, radius = 4, shootEffect = 86, effect = 350, target = true},
}

monster.defenses = {
	defense = 160,
	armor = 160,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 22},
	{type = COMBAT_ENERGYDAMAGE, percent = 22},
	{type = COMBAT_EARTHDAMAGE, percent = 22},
	{type = COMBAT_FIREDAMAGE, percent = 22},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 22},
	{type = COMBAT_HOLYDAMAGE , percent = 22},
	{type = COMBAT_DEATHDAMAGE , percent = 22},
	{type = COMBAT_WATERDAMAGE, percent = 22},
	{type = COMBAT_ARCANEDAMAGE, percent = 22},
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
