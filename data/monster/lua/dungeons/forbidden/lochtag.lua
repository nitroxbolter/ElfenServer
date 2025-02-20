local mType = Game.createMonsterType("Lochtag")
local monster = {}

monster.description = "a Lochtag"
monster.experience = 45500
monster.outfit = {
	lookType = 1257,
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
	{id = "platinum coin", chance = 90540, maxCount = 32},
	{id = 28088, chance = 32220, maxCount = 3},
	{id = 28080, chance = 71920, maxCount = 2},
	{id = 28076, chance = 71920, maxCount = 2},
	{id = "gold ingot", chance = 34920},
	{id = "glacier kilt", chance = 12920},
	{id = 28122, chance = 11920, maxCount = 2},
	{id = "wand of voodoo", chance = 14000},
	{id = "glacial rod", chance = 13450},
	{id = "green crystal fragment", chance = 22920},
	{id = "onyx chip", chance = 20000},
	{id = "rainbow quartz", chance = 13660, maxCount = 2},
	{id = 27321, chance = 14560}, -- rod
	{id = 27335, chance = 14560}, -- jaws
	{id = "skullcracker armor", chance = 1680},
	{id = "goblet of gloom", chance = 880},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -1200, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 3000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -900, maxDamage = -1250, radius = 4, effect = 208, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -1250, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -950, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true}
	
}

monster.defenses = {
	defense = 75,
	armor = 100
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
