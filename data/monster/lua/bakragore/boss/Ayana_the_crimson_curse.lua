local mType = Game.createMonsterType("Ayana the crimson curse")
local monster = {}

monster.description = "Ayana the crimson curse"
monster.experience = 12400
monster.outfit = {
	lookType = 1078,
	lookHead = 132,
	lookBody = 132,
	lookLegs = 57,
	lookFeet = 76,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 17000
monster.maxHealth = 17000
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
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {

}
monster.events = {
	"playerAttackSound"
}
monster.loot = {
	{id = "gold coin", chance = 100000, maxCount = 197},
	{id = "platinum coin", chance = 100000, maxCount = 5},
	{id = "amulet of loss", chance = 120},
	{id = "gold ring", chance = 1870},
	{id = "hailstorm rod", chance = 10000},
	{id = "garlic necklace", chance = 2050},
	{id = "blank rune", chance = 26250, maxCount = 2},
	{id = "golden sickle", chance = 350},
	{id = "skull staff", chance = 1520},
	{id = "scythe", chance = 3000},
	{id = "bunch of wheat", chance = 50000},
	{id = "soul orb", chance = 23720},
	{id = 6300, chance = 1410}, 
	{id = "werecrocodile tongue", chance = 22000, maxCount = 3},
	{id = 27436, chance = 10000},
	{id = 27443, chance = 7000},
	{id = "demonic essence", chance = 28000},
	{id = "assassin star", chance = 5900, maxCount = 10},
	{id = "great mana potion", chance = 31360, maxCount = 3},
	{id = 7633, chance = 4450}, 
	{id = 7632, chance = 4450}, 
	{id = "seeds", chance = 4300},
	{id = "terra mantle", chance = 1050},
	{id = "terra legs", chance = 2500},
	{id = "ultimate health potion", chance = 14720, maxCount = 2},
	{id = "gold ingot", chance = 5270},
	{id = "bundle of cursed straw", chance = 15000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 75, attack = 100},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -500, radius = 9, effect = CONST_ME_MORTAREA, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = -250, effect = CONST_ME_MAGIC_RED},
	{name ="strength", interval = 1000, chance = 10, minDamage = -300, maxDamage = -750, radius = 5, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 3000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -500, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = 244, target = true},
	{name ="combat", interval = 3000, chance = 8, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -450, radius = 10, effect = 246, target = false}
}

monster.defenses = {
	defense = 110,
	armor = 110
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 60}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
