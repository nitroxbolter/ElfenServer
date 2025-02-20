local mType = Game.createMonsterType("Ruby Archer")
local monster = {}

monster.description = "a Ruby Archer"
monster.experience = 10600
monster.outfit = {
	lookType = 1119,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 13500
monster.maxHealth = 13500
monster.race = "undead"
monster.corpse = 26691
monster.speed = 350
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 4,
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
	{id = "platinum coin", chance = 95000, maxCount = 29},
	{id = "tower shield", chance = 1220},
	{id = "titan axe", chance = 1540},
	{id = "bonebreaker", chance = 780},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "magma coat", chance = 600},
	{id = "magma monocle", chance = 700},
	{id = "magma boots", chance = 790},
	{id = "magma legs", chance = 680},
	{id = "magma amulet", chance = 930},
	{id = "wand of inferno", chance = 1090},
	{id = "battle stone", chance = 12460},
	{id = 13757, chance = 6000},
	{id = "brown crystal splinter", chance = 9920, maxCount = 2},
	{id = "red crystal fragment", chance = 7690, maxCount = 2},
	{id = "crystalline spikes", chance = 24540},
	{id = "drill bolt", chance = 7692, maxCount = 5},
	{id = "envenomed arrow", chance = 10230, maxCount = 10},
	{id = "flame cloth", chance = 3000, maxCount = 2},
	{id = "runic frozen crystal", chance = 1800},
	{id = "moth wing", chance = 3000},
	{id = "magic turbant", chance = 2500},
	{id = "forest diadem", chance = 2000},
	{id = "common globus card", chance = 1800},
	{id = "rare globus card", chance = 1000},
	{id = "common hidaka card", chance = 1800},
	{id = "rare hidaka card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 95, attack = 70},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -505, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 16, type = COMBAT_LIFEDRAIN, minDamage = -250, maxDamage = -550, radius = 4, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -700, range = 7, shootEffect = 56, effect = 215, target = false},
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 40, minDamage = -300, maxDamage = -550, radius = 4, shootEffect = 57, target = true},
}

monster.defenses = {
	defense = 65,
	armor = 65,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
