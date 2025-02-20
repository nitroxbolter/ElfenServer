local mType = Game.createMonsterType("Krag'lok")
local monster = {}

monster.description = "a krag'lok"
monster.experience = 16000
monster.outfit = {
	lookType = 1158,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 18500
monster.maxHealth = 18500
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
	{id = "Envenomed Arrow", chance = 55360, maxCount = 8},
	{id = "Earth Arrow", chance = 16800, maxCount = 29},
	{id = "Terra Rod", chance = 3000},
	{id = "Serpent Sword", chance = 8600},
	{id = "Zaoan armor", chance = 1280},
	{id = "Zaoan helmet", chance = 1140},
	{id = "Zaoan shoes", chance = 1110},
	{id = "Zaoan legs", chance = 1140},
	{id = "tower shield", chance = 1700},
	{id = "crystallized ribs", chance = 2300},
	{id = "mirror scale", chance = 4000, maxCount = 3},
	{id = "giant horn", chance = 5000, maxCount = 2},
	{id = "demon blood", chance = 6500, maxCount = 2},
	{id = "unknown animal tail", chance = 5800},
	{id = "forest diadem", chance = 2000},
	{id = "colored feather", chance = 7000, maxCount = 2},
	{id = "common enviska card", chance = 1800},
	{id = "rare enviska card", chance = 1000},
	{id = "common harzal card", chance = 1800},
	{id = "rare harzal card", chance = 1000},
	{id = "bronze deck", chance = 1000},
	{id = "silver deck", chance = 350},


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 45, attack = 40, condition = {type = CONDITION_POISON, totalDamage = 1480, interval = 4000}},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 13, minDamage = -400, maxDamage = -780, radius = 4, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2000, chance = 11, type = COMBAT_ICEDAMAGE, minDamage = -285, maxDamage = -680, radius = 3, shootEffect = 70, effect = 197, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -260, maxDamage = -905, range = 7, shootEffect = 29, effect = 224, target = true}
}

monster.defenses = {
	defense = 60,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
