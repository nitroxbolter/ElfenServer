local mType = Game.createMonsterType("Quara Looter")
local monster = {}

monster.description = "a Quara Looter"
monster.experience = 34000
monster.outfit = {
	lookType = 1264,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 36000
monster.maxHealth = 36000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	{id = "crystal coin", chance = 70540, maxCount = 2},
	{id = "platinum coin", chance = 81920, maxCount = 25},
	{id = 28080, chance = 71920, maxCount = 2},
	{id = 28076, chance = 71920, maxCount = 2},
	{id = 28088, chance = 71920, maxCount = 2},
	{id = 28138, chance = 1000},
	{id = 28145, chance = 700},
	{id = 28147, chance = 7000},
	{id = 28148, chance = 3000},
	{id = 28149, chance = 2200},
	{id = "assassin star", chance = 26650, maxCount = 5},
	{id = "dragon slayer", chance = 860},
	{id = "dragonbone staff", chance = 4000},
	{id = "skullcracker armor", chance = 290},
	{id = "gold ingot", chance = 570},
	{id = "spellweaver's robe", chance = 860},
	{id = "zaoan helmet", chance = 580}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1500, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, totalDamage = 2220, interval = 4000}},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -650, maxDamage = -1900, radius = 3, effect = CONST_ME_HITAREA, target = false},
	{name ="quara constrictor freeze", interval = 2000, chance = 10, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -940, maxDamage = -1470, range = 7, radius = 4, effect = 205, target = false},
	{name ="quara constrictor electrify", interval = 2000, chance = 10, range = 1, target = false}
}

monster.defenses = {
	defense = 100,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -25},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
