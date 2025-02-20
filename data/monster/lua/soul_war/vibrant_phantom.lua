local mType = Game.createMonsterType("Vibrant Phantom")
local monster = {}

monster.description = "a vibrant phantom"
monster.experience = 24960
monster.outfit = {
	lookType = 1046,
	lookHead = 85,
	lookBody = 85,
	lookLegs = 88,
	lookFeet = 91,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 27000
monster.maxHealth = 27000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 430
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
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
	{text = "All this beautiful lightning.", yell = false},
	{text = "Feel the vibration!", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "ultimate health potion", chance = 32220, maxCount = 7},
	{id = 7632, chance = 54560}, -- giant shimmering pearl (green)
	{id = "violet gem", chance = 74560},
	{id = "terra rod", chance = 21920},
	{id = "hailstorm rod", chance = 21920},
	{id = "gold ingot", chance = 54560},
	{id = "green gem", chance = 64560},
	{id = "blue gem", chance = 54560},
	{id = 28364, chance = 500},
	{id = "underworld rod", chance = 24920},
	{id = "springsprout rod", chance = 18920},
	{id = "blue crystal shard", chance = 11920},
	{id = "violet crystal shard", chance = 11920},
	{id = 26185, chance = 28920}, -- ring of blue plasma
	{id = 27359, chance = 3500}, -- vibrant heart
	{id = 27360, chance = 4500}, -- vibrant robe
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -700, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -650, maxDamage = -1100, range = 7, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -650, maxDamage = -1100, range = 7, radius = 4, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)