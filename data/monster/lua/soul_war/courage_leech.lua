local mType = Game.createMonsterType("Courage Leech")
local monster = {}

monster.description = "a courage leech"
monster.experience = 23920
monster.outfit = {
	lookType = 1059,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}



monster.health = 27000
monster.maxHealth = 27000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 426
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
	interval = 5000,
	chance = 10,
	{text = "Hiss.", yell = false},
	{text = "Zap! Zap!", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "lightning legs", chance = 75500},
	{id = "ultimate health potion", chance = 52220, maxCount = 7},
	{id = "lightning pendant", chance = 55500},
	{id = "lightning headband", chance = 25500},
	{id = "gold ring", chance = 13500},
	{id = "jade hammer", chance = 11500},
	{id = "hammer of wrath", chance = 10000},
	{id = 28351, chance = 500},
	{id = "onyx flail", chance = 19500},
	{id = "twiceslicer", chance = 17500},
	{id = "stone skin amulet", chance = 15500},
	{id = "nightmare blade", chance = 9500},
	{id = "demonrage sword", chance = 7500},
	{id = "dreaded cleaver", chance = 2500},
	{id = "butcher's axe", chance = 1500},
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1100, radius = 4, shootEffect = CONST_ANI_ETHEREALSPEAR, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 3000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1100, radius = 4, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -550, maxDamage = -900, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true}
}

monster.defenses = {
	defense = 90,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = -25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
