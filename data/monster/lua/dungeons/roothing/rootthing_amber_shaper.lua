local mType = Game.createMonsterType("Rootthing Amber Shaper")
local monster = {}

monster.description = "a Rootthing Amber Shaper"
monster.experience = 36000
monster.outfit = {
	lookType = 1268,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 45000
monster.maxHealth = 45000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 425
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
	{id = 28141, chance = 11000, maxCount = 2},
	{id = 28143, chance = 2000},
	{id = 28144, chance = 1100},
	{id = 28146, chance = 4100},
	{id = 28148, chance = 1200},
	{id = 28149, chance = 1600},
	{id = "red gem", chance = 16110},
	{id = "blue gem", chance = 7830},
	{id = "giant sword", chance = 920},
	{id = "hammer of wrath", chance = 370},
	{id = "knight legs", chance = 1330},
	{id = "crown armor", chance = 1110},
	{id = "crusader helmet", chance = 910},
	{id = "steel boots", chance = 400},
	{id = "blue crystal shard", chance = 9520},
	{id = "blue crystal splinter", chance = 11970, maxCount = 2},
	{id = "cyan crystal fragment", chance = 9070},
	{id = "crystalline sword", chance = 720},
	{id = "crystal crossbow", chance = 730}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -850, maxDamage = -1515},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -600, maxDamage = -2400, range = 7, shootEffect = 83, effect = 196, target = true},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -2200, range = 7, shootEffect = 89, target = false}
}

monster.defenses = {
	defense = 110,
	armor = 90
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
