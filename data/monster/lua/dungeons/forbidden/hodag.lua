local mType = Game.createMonsterType("Hodag")
local monster = {}

monster.description = "a Hodag"
monster.experience = 45500
monster.outfit = {
	lookType = 1259,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 61500
monster.maxHealth = 61500
monster.race = "undead"
monster.corpse = 26691
monster.speed = 450
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}
monster.events = {
	"playerAttackSound"
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
	canPushCreatures = false,
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

}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "lightning legs", chance = 75500},
	{id = 28088, chance = 32220, maxCount = 3},
	{id = 28080, chance = 71920, maxCount = 2},
	{id = 28076, chance = 71920, maxCount = 2},
	{id = "lightning pendant", chance = 55500},
	{id = "lightning headband", chance = 25500},
	{id = "gold ring", chance = 13500},
	{id = "jade hammer", chance = 11500},
	{id = "hammer of wrath", chance = 10000},
	{id = 28119, chance = 19500, maxCount = 2},
	{id = "twiceslicer", chance = 17500},
	{id = "stone skin amulet", chance = 15500},
	{id = "nightmare blade", chance = 9500},
	{id = "demonrage sword", chance = 7500},
	{id = "dreaded cleaver", chance = 2500},
	{id = "butcher's axe", chance = 1500},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -750, maxDamage = -3000},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -775, maxDamage = -1500, radius = 8, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -900, length = 8, spread = 5, effect = 243, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -1190, maxDamage = -1300, length = 8, spread = 9, effect = 246, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DROWNDAMAGE, minDamage = -900, maxDamage = -1350, radius = 5, effect = 238, target = false}
	
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 17},
	{type = COMBAT_FIREDAMAGE, percent = 8},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -11},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
