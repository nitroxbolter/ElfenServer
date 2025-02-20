local mType = Game.createMonsterType("Mounted Warrior Goblin")
local monster = {}
monster.description = "a Mounted Warrior Goblin"
monster.experience = 34500
monster.outfit = {
	lookType = 1313
}

monster.health = 38000
monster.maxHealth = 38000
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
	{id = "Small Diamond", chance = 10000, maxCount = 7},
	{id = "Small Topaz", chance = 10000, maxCount = 7},
	{id = "Ornate Chestplate", chance = 650},
	{id = "Wyvern Fang", chance = 1600},
	{id = "Diamond Sceptre", chance = 600},
	{id = "Sai", chance = 650},
	{id = "Stone Skin Amulet", chance = 950},
	{id = "Sacred Tree Amulet", chance = 2350},
	{id = "Swamplair Armor", chance = 1250},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -800},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -1480, range = 7, shootEffect = 25, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ARCANEDAMAGE, minDamage = -400, maxDamage = -1575, length = 5, spread = 3, effect = 218, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -530, maxDamage = -1280, range = 7, radius = 3, effect = 238, target = false}
}

monster.defenses = {
	defense = 110,
	armor = 110,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_ENERGYDAMAGE, percent = -17},
	{type = COMBAT_EARTHDAMAGE, percent = -8},
	{type = COMBAT_FIREDAMAGE, percent = -11},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -11},
	{type = COMBAT_HOLYDAMAGE , percent = -14},
	{type = COMBAT_DEATHDAMAGE , percent = -17},
	{type = COMBAT_WATERDAMAGE, percent = -14},
	{type = COMBAT_ARCANEDAMAGE, percent = 100},
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
