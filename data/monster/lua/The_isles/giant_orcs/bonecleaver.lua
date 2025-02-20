local mType = Game.createMonsterType("Bonecleaver")
local monster = {}

monster.description = "a Bonecleaver"
monster.experience = 15000
monster.outfit = {
	lookType = 1120,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 16000
monster.maxHealth = 16000
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
	{id = "energy ring", chance = 12050},
	{id = "silver amulet", chance = 15000},
	{id = "axe ring", chance = 7220},
	{id = "power ring", chance = 6080},
	{id = "life ring", chance = 5560},
	{id = "energy ring", chance = 12050},
	{id = "stone skin amulet", chance = 2600},
	{id = "necklace of the deep", chance = 1800},
	{id = "Rainbow Quartz", chance = 2000},
	{id = "Noble Axe", chance = 700},
	{id = "Zaoan armor", chance = 1050},
	{id = "Zaoan shoes", chance = 2150},
	{id = "Zaoan legs", chance = 1325},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common brelshaza card", chance = 1800},
	{id = "rare brelshaza card", chance = 1000},
	{id = "common vairgrys card", chance = 1800},
	{id = "rare vairgrys card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -800},
	{name ="bonecleaverdice", interval = 2000, chance = 20, minDamage = -250, maxDamage = -650, target = false},
	{name ="bonecleaverwave", interval = 2000, chance = 20, minDamage = -250, maxDamage = -550, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -500, radius = 4, effect = CONST_ME_BLOCKHIT, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -600, range = 7, shootEffect = 30, effect = 183, target = false}
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 23},
	{type = COMBAT_ENERGYDAMAGE, percent = 7},
	{type = COMBAT_EARTHDAMAGE, percent = 8},
	{type = COMBAT_FIREDAMAGE, percent = -3},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -11},
	{type = COMBAT_HOLYDAMAGE , percent = -6},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
