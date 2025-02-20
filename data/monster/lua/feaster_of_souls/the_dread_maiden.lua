local mType = Game.createMonsterType("The Dread Maiden")
local monster = {}

monster.description = "The Dread Maiden"
monster.experience = 110000
monster.outfit = {
	lookType = 1032,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 300000
monster.maxHealth = 300000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 600
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 1,
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
	interval = 5000,
	chance = 10,
	{text = "Where... Where am I?", yell = false},
	{text = "Is that you, Tom?", yell = false},
	{text = "Phew, what an awful smell ... oh, that's me.", yell = false}
}

monster.loot = {
	{id = "crystal coin", chance = 96080, maxCount = 2},
	{id = "white gem", chance = 52940, maxCount = 2},
	{id = "moonstone", chance = 52940, maxCount = 2},
	{id = "ultimate mana potion", chance = 43140, maxCount = 6},
	{id = "supreme health potion", chance = 29410, maxCount = 6},
	{id = "silver hand mirror", chance = 27450},
	{id = "berserk potion", chance = 23530, maxCount = 10},
	{id = "ultimate spirit potion", chance = 23530, maxCount = 6},
	{id = "bullseye potion", chance = 19610, maxCount = 10},
	{id = "mastermind potion", chance = 19610, maxCount = 10},
	{id = "ivory comb", chance = 13730},
	{id = "angel figurine", chance = 11760},
	{id = "giant amethyst", chance = 5000},
	{id = "giant topaz", chance = 5000},
	{id = "diamond", chance = 11760},
	{id = "cursed bone", chance = 7840},
	{id = "grimace", chance = 5880},
	{id = "amber", chance = 5880},
	{id = "amber with a dragonfly", chance = 3920},
	{id = "ghost claw", chance = 1960},
	{id = "bloody tears", chance = 1500},
	{id = "ghost chestplate", chance = 150},
	{id = "spooky hood", chance = 150},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 600, maxDamage = -1050, condition = {type = CONDITION_POISON, totalDamage = 4, interval = 4000}},
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_LIFEDRAIN, minDamage = -900, maxDamage = -1400, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="combat", interval = 1000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -1000, maxDamage = -1750, radius = 2, shootEffect = CONST_ANI_SMALLEARTH, target = false},
	{name ="drunk", interval = 1000, chance = 70, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="strength", interval = 1000, chance = 60, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -900, length = 5, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -1200, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name = "speed", chance = 15, interval = 2*1000, speed = -700, target= true, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 15,
	armor = 10,
	{name = "speed", chance = 45, interval = 2*1000, speed = 510, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 5000, chance = 60, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 2500, effect = 185, target = false}
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
