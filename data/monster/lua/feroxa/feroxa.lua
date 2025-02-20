local mType = Game.createMonsterType("Feroxa")
local monster = {}

monster.description = "Feroxa"
monster.experience = 0
monster.outfit = {
	lookType = 731,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "blood"
monster.corpse = 0
monster.speed = 175
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 2
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
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
	{id = 18413, chance = 10000, maxCount = 5}, -- blue crystal shard
	{id = 18414, chance = 10000, maxCount = 5}, -- violet crystal shard
	{id = 18418, chance = 10000, maxCount = 5}, -- blue crystal splinter
	{id = 2158, chance = 2500}, -- blue gem
	{id = 2156, chance = 2500}, -- red gem
	{id = 2195, chance = 1500}, -- boots of haste
	{id = 2152, chance = 100000, maxCount = 50}, -- platinum coin
	{id = 8473, chance = 10000, maxCount = 5}, -- ultimate health potion
	{id = 7590, chance = 10000, maxCount = 5}, -- great mana potion
	{id = 7591, chance = 10000, maxCount = 5}, -- great health potion
	{id = 24718, chance = 3000}, -- werewolf helmet
	{id = 24716, chance = 1500}, -- werewolf amulet
	{id = 24740, chance = 1500}, -- wolf backpack
	{id = 7436, chance = 1500}, -- angelic axe
	{id = 7419, chance = 1500}, -- dreaded cleaver
	{id = 24741, chance = 1500}, -- fur armor
	{id = 24742, chance = 1500}, -- badger boots
	{id = 24760, chance = 12000}, -- trophy of feroxa
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1400, maxDamage = -1800},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -1250, radius = 6, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -700, maxDamage = -1250, radius = 5, effect = CONST_ME_ICETORNADO, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -700, maxDamage = -1250, range = 6, shootEffect = CONST_ANI_ARROW, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
	defense = 55,
	armor = 50,
	{name ="feroxa summon", interval = 2000, chance = 20, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
