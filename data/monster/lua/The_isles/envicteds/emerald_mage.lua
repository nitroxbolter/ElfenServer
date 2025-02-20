local mType = Game.createMonsterType("Emerald Mage")
local monster = {}

monster.description = "a emerald mage"
monster.experience = 9350
monster.outfit = {
	lookType = 1118,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 11000
monster.maxHealth = 11000
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
	targetDistance = 4,
	runHealth = 1000,
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
	interval = 5000,
	chance = 10,
	{text = "I am furious!", yell = false},
	{text = "Get out of here!", yell = false},
	{text = "You will be punished!", yell = false}
}

monster.loot = {
	{id = "platinum coin", chance = 95000, maxCount = 29},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "battle stone", chance = 12460},
	{id = "green crystal splinter", chance = 9920, maxCount = 2},
	{id = "green crystal fragment", chance = 7690, maxCount = 2},
	{id = "Terra Mantle", chance = 550},
	{id = "Terra Legs", chance = 650},
	{id = "Terra Amulet", chance = 700},
	{id = "terra boots", chance = 950},
	{id = "Stone Skin Amulet", chance = 2350},
	{id = "Springsprout Rod", chance = 900},
	{id = "Sacred Tree Amulet", chance = 750},
	{id = "Swamplair Armor", chance = 400},
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -520},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -320, maxDamage = -490, range = 7, shootEffect = 5, effect = 222, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -605, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, effect = 216, target = true},
	{name ="energyfield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_ENERGYBALL, target = true}
}

monster.defenses = {
	defense = 50,
	armor = 50,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 3},
	{type = COMBAT_ENERGYDAMAGE, percent = 11},
	{type = COMBAT_EARTHDAMAGE, percent = -9},
	{type = COMBAT_FIREDAMAGE, percent = 4},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -7},
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
