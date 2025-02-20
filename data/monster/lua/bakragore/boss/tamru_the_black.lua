local mType = Game.createMonsterType("Tamru the Black")
local monster = {}

monster.description = "a Tamru the Black"
monster.experience = 11200
monster.outfit = {
	lookType = 1095,
	lookHead = 95,
	lookBody = 132,
	lookLegs = 76,
	lookFeet = 76,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 15500
monster.maxHealth = 15500
monster.race = "undead"
monster.corpse = 26691
monster.speed = 380
monster.manaCost = 0



monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
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
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}
monster.events = {
	"playerAttackSound"
}
monster.light = {
	level = 0,
	color = 0
}

monster.voices = {

}

monster.loot = {
	{id = "gold coin", chance = 100000, maxCount = 197},
	{id = "platinum coin", chance = 100000, maxCount = 5},
	{id = "amulet of loss", chance = 120},
	{id = "gold ring", chance = 1870},
	{id = "diamond sceptre", chance = 5760},
	{id = "war hammer", chance = 2160},
	{id = "metal spats", chance = 1440},
	{id = "devil helmet", chance = 1360},
	{id = "magma legs", chance = 1150},
	{id = 6300, chance = 1410},
	{id = 27423, chance = 15000, maxCount = 3},
	{id = "soul orb", chance = 5000, maxCount = 2},
	{id = "crystal sword", chance = 5000},
	{id = "serpent sword", chance = 5000},
	{id = "rapier", chance = 5000},
	{id = "great mana potion", chance = 31360, maxCount = 3},
	{id = "ultimate health potion", chance = 14720, maxCount = 2},
	{id = "gold ingot", chance = 5270},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -615, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -400, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name = "speed", chance = 15, interval = 2*1000, speed = -250, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = 0, maxDamage = -574, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -646, radius = 3, effect = CONST_ME_POFF, target = false},
}

monster.defenses = {
	defense = 83,
	armor = 83
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
