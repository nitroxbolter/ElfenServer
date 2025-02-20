local mType = Game.createMonsterType("Dybuk")
local monster = {}

monster.description = "a Dybuk"
monster.experience = 45500
monster.outfit = {
	lookType = 1256,
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
	{id = 28088, chance = 32220, maxCount = 3},
	{id = 28080, chance = 71920, maxCount = 2},
	{id = 28076, chance = 71920, maxCount = 2},
	{id = "terra amulet", chance = 35500},
	{id = "giant sword", chance = 13500},
	{id = "war axe", chance = 9500},
	{id = "glooth blade", chance = 11500},
	{id = "titan axe", chance = 19500},
	{id = "underworld rod", chance = 35500},
	{id = 28117, chance = 7500, maxCount = 2},
	{id = "fur armor", chance = 9500},
	{id = "terra mantle", chance = 3500},
	{id = "wood cape", chance = 2500},
	{id = "rubber cap", chance = 1500},
	{id = "stone skin amulet", chance = 2000},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1300, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 6000, chance = 22, type = COMBAT_HOLYDAMAGE, minDamage = -700, maxDamage = -1300, range = 7, radius = 4, effect = 243, target = true},
	{name ="combat", interval = 6000, chance = 12, type = COMBAT_HOLYDAMAGE, minDamage = -1100, maxDamage = -1200, range = 7, effect = 208, target = true},
	{name ="combat", interval = 4000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -800, maxDamage = -1350, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true}
	
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -7},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
