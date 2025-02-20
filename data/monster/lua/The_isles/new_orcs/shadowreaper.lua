local mType = Game.createMonsterType("Shadowreaper")
local monster = {}

monster.description = "a Shadowreaper"
monster.experience = 11000
monster.outfit = {
	lookType = 1126,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 12000
monster.maxHealth = 12000
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
	health = 20,
	damage = 40,
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
	{id = "platinum coin", chance = 95000, maxCount = 30},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "great spirit potion", chance = 15000, maxCount = 2},
	{id = "oriental shoes", chance = 1600},
	{id = "elven legs", chance = 1000},
	{id = "cobra crown", chance = 1100},
	{id = "silver token", chance = 2500},
	{id = "elven mail", chance = 800},
	{id = "demon shield", chance = 2270},
	{id = "shockwave amulet", chance = 4100},
	{id = "execowtioner axe", chance = 2890},
	{id = "mino shield", chance = 1620},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common agaton card", chance = 1800},
	{id = "rare agaton card", chance = 1000},
	{id = "common lumerus card", chance = 1800},
	{id = "rare lumerus card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -500, range = 7, shootEffect = 81, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DROWNDAMAGE, minDamage = -200, maxDamage = -610, range = 7, shootEffect = 67, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HOLYDAMAGE, minDamage = -200, maxDamage = -850, range = 7, radius = 1, shootEffect = 71, effect = 223, target = true},
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{name ="invisible", interval = 2000, chance = 5, effect = 217}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 7},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 7},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
