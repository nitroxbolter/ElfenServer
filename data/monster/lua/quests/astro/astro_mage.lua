local mType = Game.createMonsterType("Astro Mage")
local monster = {}

monster.description = "Astro Mage"
monster.experience = 0
monster.outfit = {
	lookType = 1207,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 17000
monster.maxHealth = 17000
monster.race = "undead"
monster.corpse = 0
monster.speed = 450
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20
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
	staticAttackChance = 98,
	targetDistance = 4,
	runHealth = 3500,
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

monster.summon = {
}

monster.voices = {

}

monster.loot = {

    	
}
monster.events = {
	"playerAttackSound"
}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -250, maxDamage = -900},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -280, maxDamage = -1359, range = 7, shootEffect = 85, effect = 302, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -50, maxDamage = -105, range = 7, radius = 1, shootEffect = 84, effect = 216, target = true},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -1325, range = 7, shootEffect = 70, effect = 217, target = false},
}

monster.defenses = {
	defense = 40,
	armor = 40,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
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
