local mType = Game.createMonsterType("Glacial Behemoth")
local monster = {}

monster.description = "a Glacial Behemoth"
monster.experience = 19200
monster.outfit = {
	lookType = 1165,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 20000
monster.maxHealth = 20000
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
	targetDistance = 4,
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
	{id = "blue robe", chance = 1520},
	{id = "crown shield", chance = 720},
	{id = "lightning robe", chance = 1620},
	{id = "bonebreaker", chance = 920},
	{id = "diamond sceptre", chance = 1200},
	{id = "demonbone", chance = 1100},
	{id = "heavy mace", chance = 800},
	{id = "lavos armor", chance = 500}



}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1013},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -900, radius = 7, effect = 234, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -800, radius = 7, effect = 235, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -500, maxDamage = -800, range = 7, effect = 241, target = false},
}

monster.defenses = {
	defense = 55,
	armor = 55,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
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
