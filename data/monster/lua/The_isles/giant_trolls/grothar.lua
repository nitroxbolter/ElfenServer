local mType = Game.createMonsterType("Grothar")
local monster = {}

monster.description = "a Grothar"
monster.experience = 19000
monster.outfit = {
	lookType = 1157,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 22500
monster.maxHealth = 22500
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
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	{id = "platinum coin", chance = 95000, maxCount = 20},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "Envenomed Arrow", chance = 1200, maxCount = 14},
	{id = "Poisonous Slime", chance = 1200},
	{id = "Small Diamond", chance = 1200},
	{id = "Small Topaz", chance = 1200},
	{id = "Blue Gem", chance = 1950},
	{id = "Terra Boots", chance = 1850 },
	{id = "Terra Hood", chance = 1280},
	{id = "Protection Amulet", chance = 5200},
	{id = "Sacred Tree Amulet", chance = 4200},
	{id = "Springsprout Rod", chance = 2090},
	{id = "Stone Skin Amulet", chance = 9200},
	{id = "Terra Legs", chance = 1650},
	{id = "Terra Mantle", chance = 1550},
	{id = "Clay Lump", chance = 1200},
	{id = "Terra Amulet", chance = 3200},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common enviska card", chance = 1800},
	{id = "rare enviska card", chance = 1000},
	{id = "common harzal card", chance = 1800},
	{id = "rare harzal card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -840, condition = {type = CONDITION_POISON, totalDamage = 1850, interval = 4000}},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -160, maxDamage = -670, range = 7, shootEffect = 83, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -400, maxDamage = -640, range = 7, radius = 7, effect = 249, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -120, maxDamage = -570, radius = 3, effect = 236, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -500, maxDamage = -1000, length = 8, spread = 3, effect = 235, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = -700, radius = 1, target = true, duration = 30*1000, effect = 226},
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
