local mType = Game.createMonsterType("Mounted Archer Goblin")
local monster = {}
monster.description = "a Mounted Archer Goblin"
monster.experience = 29000
monster.outfit = {
	lookType = 1311
}

monster.health = 29500
monster.maxHealth = 29500
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
	{id = "small ruby", chance = 9600, maxCount = 3},
	{id = "small amethyst", chance = 17000, maxCount = 3},
	{id = "giant sword", chance = 560},
	{id = "warrior helmet", chance = 2820},
	{id = "knight armor", chance = 4000},
	{id = "white piece of cloth", chance = 4520},
	{id = "red piece of cloth", chance = 1130},
	{id = "small topaz", chance = 17000, maxCount = 2},
	{id = "Mino Shield", chance = 12000},
	{id = "Terra Boots", chance = 1500},
	{id = "Terra Hood", chance = 1400},
	{id = "Beastslayer Axe", chance = 1500},
	{id = "Black Shield", chance = 3500},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1100, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1480, range = 1, effect = 245, target = false},
	{name ="combat", interval = 1500, chance = 25, type = COMBAT_WATERDAMAGE, minDamage = -680, maxDamage = -1500, range = 7, shootEffect = 56, effect = 215, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 4},
	{type = COMBAT_ENERGYDAMAGE, percent = 9},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -11},
	{type = COMBAT_HOLYDAMAGE , percent = -4},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 7},
	{type = COMBAT_ARCANEDAMAGE, percent = -3},
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
