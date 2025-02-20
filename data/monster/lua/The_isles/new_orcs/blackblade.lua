local mType = Game.createMonsterType("Blackblade")
local monster = {}

monster.description = "a Blackblade"
monster.experience = 15000
monster.outfit = {
	lookType = 1127,
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
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 10,
	health = 10,
	damage = 60,
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
	{id = "platinum coin", chance = 95000, maxCount = 30},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "great spirit potion", chance = 15000, maxCount = 2},
	{id = "small diamond", chance = 6760, maxCount = 3},
	{id = "small amethyst", chance = 5700, maxCount = 3},
	{id = "small topaz", chance = 4520, maxCount = 3},
	{id = "small sapphire", chance = 3790, maxCount = 2},
	{id = "small emerald", chance = 4700, maxCount = 2},
	{id = "small amethyst", chance = 2259, maxCount = 2},
	{id = "war axe", chance = 8270},
	{id = "green gem", chance = 1100},
	{id = "blue gem", chance = 1392},
	{id = "yellow gem", chance = 1160},
	{id = "Skull Staff", chance = 790},
	{id = "Grasshopper Legs", chance = 790},
	{id = "djinn blade", chance = 1300},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common agaton card", chance = 1800},
	{id = "rare agaton card", chance = 1000},
	{id = "common lumerus card", chance = 1800},
	{id = "rare lumerus card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -500, range = 4, radius = 4, effect = 231, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -800, length = 7, spread = 5, effect = 233, target = false},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = -250, maxDamage = -840, radius = 5, effect = 238, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -120, maxDamage = -888, length = 7, spread = 8, effect = 242, target = false}
}

monster.defenses = {
	defense = 70,
	armor = 70,
	{name ="invisible", interval = 2000, chance = 5, effect = 217}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 3},
	{type = COMBAT_EARTHDAMAGE, percent = 8},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 25},
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
