local mType = Game.createMonsterType("Quara Raider")
local monster = {}

monster.description = "a Quara Raider"
monster.experience = 27900
monster.outfit = {
	lookType = 1266,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 29000
monster.maxHealth = 29000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}
monster.events = {
	"playerAttackSound"
}
monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {


}

monster.loot = {
	{id = "crystal coin", chance = 70540, maxCount = 2},
	{id = "platinum coin", chance = 81920, maxCount = 25},
	{id = 28080, chance = 71920, maxCount = 2},
	{id = 28076, chance = 71920, maxCount = 2},
	{id = 28088, chance = 71920, maxCount = 2},
	{id = 28138, chance = 1000},
	{id = 28145, chance = 700},
	{id = 28147, chance = 7000},
	{id = 28148, chance = 3000},
	{id = 28149, chance = 2200},
	{id = "small emerald", chance = 15890, maxCount = 3},
	{id = "small amethyst", chance = 16020, maxCount = 3},
	{id = 27300, chance = 8000, maxCount = 2},
	{id = "red gem", chance = 16510},
	{id = "blue gem", chance = 4480},
	{id = "jade hat", chance = 610},
	{id = "glacial rod", chance = 960},
	{id = "green crystal shard", chance = 8720},
	{id = "brown crystal splinter", chance = 17610, maxCount = 2},
	{id = "red crystal fragment", chance = 13540},
	{id = "violet gem", chance = 6560},
	{id = "crystalline armor", chance = 2500},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -999, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, totalDamage = 2500, interval = 4000}},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -850, maxDamage = -1750, range = 7, shootEffect = 85, effect = 222, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -550, maxDamage = -1400, length = 4, spread = 3, effect = 218, target = false}
}

monster.defenses = {
	defense = 81,
	armor = 81
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
