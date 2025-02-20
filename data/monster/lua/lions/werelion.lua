local mType = Game.createMonsterType("Werelion")
local monster = {}

monster.description = "a werelion"
monster.experience = 2400
monster.outfit = {
	lookType = 1049,
	lookHead = 58,
	lookBody = 2,
	lookLegs = 94,
	lookFeet = 10,
	lookAddons = 3,
	lookMount = 0
}


monster.health = 2800
monster.maxHealth = 2800
monster.race = "blood"
monster.corpse = 26691
monster.speed = 310
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 5,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 1,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 5},
	{id = "great spirit potion", chance = 100000, maxCount = 2},
	{id = "small enchanted ruby", chance = 5000, maxCount = 2},
	{id = "meat", chance = 5000, maxCount = 2},
	{id = "crystal sword", chance = 5000},
	{id = "lion's mane", chance = 5000},
	{id = "silver brooch", chance = 1500},
	{id = "small diamond", chance = 1500, maxCount = 2},
	{id = "war hammer", chance = 1500},
	{id = "doublet", chance = 1500},
	{id = "dark shield", chance = 1500},
	{id = "titan axe", chance = 1500},
	{id = "spiked squelcher", chance = 1500},
	{id = "glorious axe", chance = 1500},
	{id = "spirit cloak", chance = 1500},
	{id = "onyx chip", chance = 1500},
	{id = "coral brooch", chance = 1500},
	{id = "ivory carving", chance = 1500},
	{id = "rainbow quartz", chance = 1500},
	{id = "noble axe", chance = 500},
	{id = "white silk flower", chance = 500},
	{id = "lion figurine", chance = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
	{name ="werelion wave", interval = 2000, chance = 20, minDamage = -150, maxDamage = -250, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -410, range = 3, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -170, maxDamage = -350, range = 3, shootEffect = CONST_ANI_HOLY, target = true}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 45}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
