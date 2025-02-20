local mType = Game.createMonsterType("Frost Behemoth")
local monster = {}

monster.description = "a Frost Behemoth"
monster.experience = 16700
monster.outfit = {
	lookType = 1163,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 18000
monster.maxHealth = 18000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 400
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
	{id = "platinum coin", chance = 95000, maxCount = 20},
	{id = "strong health potion", chance = 14285, maxCount = 2},
	{id = "strong mana potion", chance = 15000, maxCount = 2},
	{id = "great mana potion", chance = 15920, maxCount = 2},
	{id = "great health potion", chance = 15000, maxCount = 2},
	{id = "spellbook of warding", chance = 1200},
	{id = "spellbook of mind control", chance = 900},
	{id = "spellbook of lost souls", chance = 900},
	{id = "assassin star", chance = 12500, maxCount = 5},
	{id = "boots of haste", chance = 700},
	{id = "wand of decay", chance = 3000},
	{id = "life crystal", chance = 4000},


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 180, attack = 200},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -700, radius = 6, effect = 231, target = false},
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 9, minDamage = -400, maxDamage = -600, radius = 8, effect = 238, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -600, range = 7, radius = 6, shootEffect = 60, effect = 244, target = true},
}

monster.defenses = {
	defense = 50,
	armor = 45,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
