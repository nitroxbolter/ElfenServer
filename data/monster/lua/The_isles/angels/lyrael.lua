local mType = Game.createMonsterType("Lyrael")
local monster = {}

monster.description = "a Lyrael"
monster.experience = 18500
monster.outfit = {
	lookType = 1140,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 18500
monster.maxHealth = 18500
monster.race = "undead"
monster.corpse = 26691
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 20,
	health = 10,
	damage = 50,
	random = 20,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
}

monster.voices = {
}

monster.loot = {
	{id = "platinum coin", chance = 95000, maxCount = 49},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "crystal mace", chance = 2500},
	{id = "magic plate armor", chance = 1380},
	{id = "crown legs", chance = 920},
	{id = "crusader helmet", chance = 920},
	{id = "tower shield", chance = 1380},
	{id = "steel boots", chance = 920},
	{id = "onyx flail", chance = 920},
	{id = "jade hammer", chance = 920},
	{id = "blue crystal shard", chance = 5000, maxCount = 2},
	{id = "violet crystal shard", chance = 4000, maxCount = 1},
	{id = "green crystal shard", chance = 6600, maxCount = 1},
	{id = "green crystal splinter", chance = 8000, maxCount = 2},
	{id = "brown crystal splinter", chance = 7000, maxCount = 2},
	{id = "blue crystal splinter", chance = 5000, maxCount = 1},
	{id = "common erasmo card", chance = 1800},
	{id = "rare erasmo card", chance = 1000},
	{id = "common demetar card", chance = 1800},
	{id = "rare demetar card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -350, maxDamage = -798},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -700, length = 5, spread = 2, effect = 222, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -199, maxDamage = -650, radius = 4, shootEffect = 60, effect = 208, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -800, length = 8, spread = 3, effect = 8, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -199, maxDamage = -1200, radius = 1, shootEffect = 32, target = true}
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
