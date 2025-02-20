local mType = Game.createMonsterType("Mok'gosh")
local monster = {}

monster.description = "a Mok'gosh"
monster.experience = 21600
monster.outfit = {
	lookType = 1161,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 25000
monster.maxHealth = 25000
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
	{id = "snakebite rod", chance = 11930},
	{id = "warrior helmet", chance = 3060},
	{id = "strange helmet", chance = 4670},
	{id = "crown armor", chance = 1510},
	{id = "royal helmet", chance = 840},
	{id = "tower shield", chance = 1920},
	{id = "power bolt", chance = 6200, maxCount = 5},
	{id = "green mushroom", chance = 18200},
	{id = "charmer's tiara", chance = 980},
	{id = "mercenary sword", chance = 2670},
	{id = "noble axe", chance = 1750},
	{id = "swamplair armor", chance = 890},
	{id = "spellbook of mind control", chance = 890},
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
	{name ="melee", interval = 2000, chance = 100, skill = 135, attack = 120},
	{name ="combat", interval = 2000, chance = 7, type = COMBAT_HOLYDAMAGE, minDamage = -200, maxDamage = -960, range = 7, shootEffect = 71, effect = 269, target = true},
	{name ="combat", interval = 2000, chance = 11, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -885, radius = 3, effect = 206, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -900, length = 4, spread = 3, effect = 204, target = false}
}

monster.defenses = {
	defense = 75,
	armor = 75,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
