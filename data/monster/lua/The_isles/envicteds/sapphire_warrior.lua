local mType = Game.createMonsterType("Sapphire Warrior")
local monster = {}

monster.description = "a Sapphire warrior"
monster.experience = 12380
monster.outfit = {
	lookType = 1117,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 16500
monster.maxHealth = 16500
monster.race = "undead"
monster.corpse = 26691
monster.speed = 350
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
	{id = "platinum coin", chance = 95000, maxCount = 29},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "blue crystal splinter", chance = 9920, maxCount = 2},
	{id = "cyan crystal fragment", chance = 7690, maxCount = 2},
	{id = "glacier robe", chance = 600},
	{id = "glacier mask", chance = 700},
	{id = "glacier shoes", chance = 790},
	{id = "glacier kilt", chance = 680},
	{id = "glacier amulet", chance = 930},
	{id = "Might Ring", chance = 500},
	{id = "holy orchid", chance = 950},
	{id = "iron ore", chance = 1200},
	{id = "flame cloth", chance = 3000, maxCount = 2},
	{id = "runic frozen crystal", chance = 1800},
	{id = "moth wing", chance = 3000},
	{id = "magic turbant", chance = 2500},
	{id = "forest diadem", chance = 2000},
	{id = "common globus card", chance = 1800},
	{id = "rare globus card", chance = 1000},
	{id = "common hidaka card", chance = 1800},
	{id = "rare hidaka card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 180, attack = 200},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -400, radius = 6, effect = 209, target = false},
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 9, minDamage = -400, maxDamage = -600, radius = 8, effect = 201, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -550, range = 7, radius = 6, shootEffect = 26, effect = 207, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -700, range = 7, radius = 4, shootEffect = 39, effect = 184, target = true},
}

monster.defenses = {
	defense = 80,
	armor = 80,
	{name ="combat", interval = 1500, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 500, effect = 185, target = false},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
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
