local mType = Game.createMonsterType("Baalzebul")
local monster = {}

monster.description = "a Baalzebul"
monster.experience = 29900
monster.outfit = {
	lookType = 1144,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 500
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
	{id = "assassin dagger", chance = 1000},
	{id = "haunted blade", chance = 2000},
	{id = "Small Diamond", chance = 10000, maxCount = 3},
	{id = "Small Sapphire", chance = 10000, maxCount = 3},
	{id = "Diamond Sceptre", chance = 6000},
	{id = "Ice Rapier", chance = 8000},
	{id = "Crystal Mace", chance = 1150},
	{id = "Glacier Kilt", chance = 3050},
	{id = "Glacier Robe", chance = 2200},
	{id = "Glacier Shoes", chance = 2950},
	{id = "Strange Helmet", chance = 1000},
	{id = "Sapphire Hammer", chance = 500},
	{id = "Glacial Rod", chance = 850},
	{id = "Crystalline Armor", chance = 650},
	{id = "spellbook of enlightenment", chance = 900},
	{id = "spellbook of warding", chance = 660},
	{id = "common erasmo card", chance = 1800},
	{id = "rare erasmo card", chance = 1000},
	{id = "common demetar card", chance = 1800},
	{id = "rare demetar card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -555, maxDamage = -999, condition = {type = CONDITION_CURSED, totalDamage = 3000, interval = 4000}},
	{name ="condition", type = CONDITION_CURSED, interval = 2000, chance = 10, minDamage = -700, maxDamage = -900, length = 5, spread = 3, effect = 217, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -1250, radius = 1, shootEffect = 78, effect = 266, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -630, maxDamage = -1300, radius = 4, effect = 23, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -750, maxDamage = -1500, radius = 4, shootEffect = 86, effect = 247, target = true}
}

monster.defenses = {
	defense = 110,
	armor = 110,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 6},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 15},
	{type = COMBAT_MANADRAIN, percent = 15},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 3},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 7}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
