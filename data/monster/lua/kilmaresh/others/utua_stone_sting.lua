local mType = Game.createMonsterType("Utua Stone Sting")
local monster = {}

monster.description = "Utua Stone Sting"
monster.experience = 5100
monster.outfit = {
	lookType = 398,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6400
monster.maxHealth = 6400
monster.race = "undead"
monster.corpse = 26691
monster.speed = 350
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}


monster.strategiesTarget = {
	nearest = 60,
	random = 40,
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
	runHealth = 0,
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
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "platinum coin", chance = 92590, maxCount = 17},
	{id = "ultimate health potion", chance = 1100, maxCount = 5},
	{id = "scorpion tail", chance = 10750, maxCount = 5},
	{id = "emerald bangle", chance = 5100},
	{id = "lightning legs", chance = 4620},
	{id = "utua's poison", chance = 1820},
	{id = "violet gem", chance = 5100},
	{id = "coral brooch", chance = 4620},
	{id = "glacier kilt", chance = 1820},
	{id = "crystal mace", chance = 5100},
	{id = "gemmed figurine", chance = 4620},
	{id = "skull helmet", chance = 1820},
	{id = "warrior's axe", chance = 5100},
	{id = "gold ingot", chance = 4620},
	{id = "green gem", chance = 1820},
	{id = "mercenary sword", chance = 5100},
	{id = "chaos mace", chance = 4620},
	{id = "demon shield", chance = 1820},
	{id = "guardian axe", chance = 4620},
	{id = "spellweaver's robe", chance = 1820},
	{id = "glacier robe", chance = 5100},
	{id = "noble axe", chance = 4620},
	{id = "magic plate armor", chance = 1820},
	{id = "mastermind potion", chance = 4620},
	{id = 26187, chance = 156}, -- ring of green plasma
	{id = "magma legs", chance = 5100},
	{id = "raw watermelon tourmaline", chance = 4620},
	{id = "red silk flower", chance = 1820},
	{id = "fist on a stick", chance = 220}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -300, condition = {type = CONDITION_POISON, totalDamage = 1000, interval = 4000}},
	{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 17, minDamage = -200, maxDamage = -300, range = 5, radius = 4, target = true, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS},
	{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 100, minDamage = -300, maxDamage = -450, range = 5, radius = 1, target = true, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_GREEN_RINGS},
	{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 100, minDamage = -200, maxDamage = -400, length = 4, spread = 2, effect = CONST_ME_DRAWBLOOD}
}

monster.defenses = {
	defense = 0,
	armor = 42,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 60, maxDamage = 100, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
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

mType.onAppear = function(monster, creature)
end

mType:register(monster)
