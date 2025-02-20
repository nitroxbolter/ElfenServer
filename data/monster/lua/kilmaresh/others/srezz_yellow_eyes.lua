local mType = Game.createMonsterType("Srezz Yellow Eyes")
local monster = {}

monster.description = "Srezz Yellow Eyes"
monster.experience = 4800
monster.outfit = {
	lookType = 220,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6200
monster.maxHealth = 6200
monster.race = "venom"
monster.corpse = 26691
monster.speed = 350
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}


monster.strategiesTarget = {
	nearest = 70,
	health = 30,
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 275,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
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
	{id = "platinum coin", chance = 32300, maxCount = 17},
	{id = "ultimate health potion", chance = 32300, maxCount = 5},
	{id = "gold ingot", chance = 2870},
	{id = "snake skin", chance = 14800},
	{id = "mastermind potion", chance = 12000},
	{id = 7633, chance = 14000, maxCount = 2}, -- giant shimmering pearl (brown)
	{id = "blue crystal shard", chance = 800},
	{id = "black pearl", chance = 930},
	{id = "winged tail", chance = 560},
	{id = "srezz' eye", chance = 670},
	{id = "violet gem", chance = 510},
	{id = "gemmed figurine", chance = 140},
	{id = "green gem", chance = 920},
	{id = "blue gem", chance = 6200},
	{id = "glacier robe", chance = 18200},
	{id = "glacier kilt", chance = 180},
	{id = "giant sword", chance = 2070},
	{id = "skull helmet", chance = 750},
	{id = "war axe", chance = 2000},
	{id = "demonrage sword", chance = 90},
	{id = 26187, chance = 156}, -- ring of green plasma
	{id = 2157, chance = 90}, -- gold nugget
	{id = "red silk flower", chance = 14800},
	{id = "raw watermelon tourmaline", chance = 960}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200},
	{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 40, minDamage = -400, maxDamage = -500, range = 5, radius = 4, target = true, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS},
	{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 30, minDamage = -200, maxDamage = -300, length = 4, spread = 2, effect = CONST_ME_DRAWBLOOD},
	{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 70, minDamage = -200, maxDamage = -350, radius = 4, effect = CONST_ME_DRAWBLOOD}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 500, effect = 185, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = 450, effect = CONST_ME_MAGIC_RED},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onAppear = function(monster, creature)
end

mType:register(monster)
