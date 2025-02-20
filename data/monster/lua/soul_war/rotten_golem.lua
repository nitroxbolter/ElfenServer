local mType = Game.createMonsterType("Rotten Golem")
local monster = {}

monster.description = "a rotten golem"
monster.experience = 23400
monster.outfit = {
	lookType = 1056,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 28000
monster.maxHealth = 28000
monster.race = "venom"
monster.corpse = 26691
monster.speed = 400
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
	chance = 10
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "great spirit potion", chance = 32220, maxCount = 7},
	{id = 7632, chance = 54560}, -- giant shimmering pearl (green)
	{id = 7633, chance = 54560}, -- giant shimmering pearl (brown)
	{id = "terra amulet", chance = 35500},
	{id = "giant sword", chance = 13500},
	{id = "war axe", chance = 9500},
	{id = "mercenary sword", chance = 11500},
	{id = "titan axe", chance = 19500},
	{id = "underworld rod", chance = 35500},
	{id = 28361, chance = 500},
	{id = "sacred tree amulet", chance = 17500},
	{id = "fur armor", chance = 9500},
	{id = "terra mantle", chance = 3500},
	{id = "wood cape", chance = 2500},
	{id = "rubber cap", chance = 1500},
	{id = "stone skin amulet", chance = 2000},
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -950},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -900, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -750, maxDamage = -1200, radius = 7, effect = CONST_ME_BIGPLANTS, target = false},
	{name ="soulroots", interval = 2000, chance = 10, target = true}
}

monster.defenses = {
	defense = 110,
	armor = 120
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
