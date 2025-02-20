local mType = Game.createMonsterType("Grand Commander Soeren")
local monster = {}

monster.description = "Grand Commander Soeren"
monster.experience = 10000
monster.outfit = {
	lookType = 1001,
	lookHead = 57,
	lookBody = 96,
	lookLegs = 76,
	lookFeet = 105,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 17000
monster.maxHealth = 17000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 450
monster.manaCost = 0


monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 70,
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
}

monster.loot = {
	{id = "small enchanted amethyst", chance = 15000, maxCount = 3},
	{id = "platinum coin", chance = 50000, maxCount = 3},
	{id = "great health potion", chance = 50000, maxCount = 3},
	{id = "small ruby", chance = 12700, maxCount = 3},
	{id = "onyx arrow", chance = 30000, maxCount = 3},
	{id = "golden armor", chance = 1000},
	{id = "green gem", chance = 1300},
	{id = "falcon crest", chance = 400, maxCount = 3},
	{id = "patch of fine cloth", chance = 2500},
	{id = "falcon coif", chance = 200},
	{id = "falcon bow", chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -720, range = 7, shootEffect = CONST_ANI_ROYALSPEAR, target = false},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -500, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_BLOCKHIT, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 82,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 650, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
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
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
