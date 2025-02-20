local mType = Game.createMonsterType("Cinderclaw")
local monster = {}

monster.description = "a Cinderclaw"
monster.experience = 18500
monster.outfit = {
	lookType = 1124,
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
	{id = "dragon slayer", chance = 3500},
	{id = "runed sword", chance = 2800},
	{id = "demonic essence", chance = 35000, maxCount = 2},
	{id = "crown helmet", chance = 3250},
	{id = "crown armor", chance = 1250},
	{id = "crown legs", chance = 2250},
	{id = "divine plate", chance = 450},
	{id = "diamond sceptre", chance = 2590},
	{id = "dragon ham", chance = 80000, maxCount = 5},
	{id = "knight axe", chance = 3000},
	{id = "crystal mace", chance = 1700},
	{id = "chaos mace", chance = 1930},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "flame cloth", chance = 3000, maxCount = 2},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "runic frozen crystal", chance = 1800},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "moth wing", chance = 3000},
	{id = "magic turbant", chance = 2500},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common zaika card", chance = 1800},
	{id = "rare zaika card", chance = 1000},
	{id = "common rictus card", chance = 1800},
	{id = "rare rictus card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 150, attack = 100},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -700, range = 7, radius = 4, shootEffect = 5, effect = 258, target = true},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -750, range = 7, radius = 4, shootEffect = CONST_ANI_DEATH, target = true},
	{name ="combat", interval = 2000, chance = 11, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -615, range = 7, shootEffect = 70, effect = 255, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -850, length = 8, spread = 3, effect = 229, target = false}
}

monster.defenses = {
	defense = 100,
	armor = 100,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -12},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
