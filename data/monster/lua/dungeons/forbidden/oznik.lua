local mType = Game.createMonsterType("Oznik")
local monster = {}

monster.description = "a Oznik"
monster.experience = 50500
monster.outfit = {
	lookType = 1260,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 69000
monster.maxHealth = 69000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 180
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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

}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "platinum coin", chance = 90540, maxCount = 32},
	{id = 28088, chance = 32220, maxCount = 3},
	{id = 28080, chance = 71920, maxCount = 2},
	{id = 28076, chance = 71920, maxCount = 2},
	{id = "skull staff", chance = 65560},
	{id = "epee", chance = 75560},
	{id = "crystal mace", chance = 25560},
	{id = "noble axe", chance = 8560},
	{id = "spellbook of mind control", chance = 9000},
	{id = 26795, chance = 7500, maxCount = 2}, 
	{id = "fire axe", chance = 13500},
	{id = "royal helmet", chance = 15500},
	{id = "mastermind shield", chance = 9500},
	{id = "assassin dagger", chance = 8500},
	{id = "butcher's axe", chance = 7500},
	{id = "jade hammer", chance = 6500},
	{id = "crystalline sword", chance = 5500},
	{id = "alloy legs", chance = 4500},
	{id = "metal bat", chance = 3500},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -2000},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -800, maxDamage = -1330, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -920, maxDamage = -1260, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	
}

monster.defenses = {
	defense = 75,
	armor = 100
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
