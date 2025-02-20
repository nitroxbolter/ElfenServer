local mType = Game.createMonsterType("Bony Sea Devil")
local monster = {}

monster.description = "a bony sea devil"
monster.experience = 32500
monster.outfit = {
	lookType = 1042,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 24000
monster.maxHealth = 24000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 420
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
	chance = 10,
	{text = "Bling.", yell = false},
	{text = "Clank.", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "platinum coin", chance = 90540, maxCount = 32},
	{id = "ultimate health potion", chance = 72220, maxCount = 7},
	{id = 7632, chance = 54560}, -- giant shimmering pearl (green)
	{id = 7633, chance = 54560}, -- giant shimmering pearl (brown)
	{id = "gold ingot", chance = 34920},
	{id = "glacier kilt", chance = 12920},
	{id = "northwind rod", chance = 11920},
	{id = "wand of voodoo", chance = 14000},
	{id = "glacial rod", chance = 13450},
	{id = "green crystal fragment", chance = 22920},
	{id = "onyx chip", chance = 20000},
	{id = "rainbow quartz", chance = 13660, maxCount = 2},
	{id = 27321, chance = 14560}, -- rod
	{id = 27335, chance = 14560}, -- jaws
	{id = "skullcracker armor", chance = 1680},
	{id = "goblet of gloom", chance = 880},
	{id = 28346, chance = 500},
	{id = 27353, chance = 350} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -550, maxDamage = -1100, length = 5, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -1000, radius = 7, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -700, range = 7, radius = 5, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true}

}

monster.defenses = {
	defense = 80,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 60},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
