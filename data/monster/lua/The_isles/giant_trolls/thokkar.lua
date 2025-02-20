local mType = Game.createMonsterType("Thokkar")
local monster = {}

monster.description = "a Thokkar"
monster.experience = 13500
monster.outfit = {
	lookType = 1156,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 15000
monster.maxHealth = 15000
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
	{id = "protection amulet", chance = 3250},
	{id = "hunting spear", chance = 11250, maxCount = 3},
	{id = "dark helmet", chance = 11250},
	{id = "flask of warrior's sweat", chance = 250},
	{id = "plate armor", chance = 5250},
	{id = "plate legs", chance = 4250},
	{id = "two handed sword", chance = 250},
	{id = "stealth ring", chance = 1230},
	{id = "crusader helmet", chance = 750},
	{id = "Relic Sword", chance = 650},
	{id = "yellow gem", chance = 1219},
	{id = "green gem", chance = 1613},
	{id = "red gem", chance = 1538},
	{id = "blue gem", chance = 1300},
	{id = "small emerald", chance = 5366, maxCount = 3},
	{id = "talon", chance = 5710},
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -750},
	{name ="combat", interval = 1500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -850, range = 7, shootEffect = 78, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -900, range = 5, radius = 3, effect = 269, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
