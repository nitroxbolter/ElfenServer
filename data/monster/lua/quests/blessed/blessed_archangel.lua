local mType = Game.createMonsterType("Blessed Archangel")
local monster = {}

monster.description = "Blessed Archangel"
monster.experience = 24500
monster.outfit = {
	lookType = 1223,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 225000
monster.maxHealth = 225000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 450
monster.manaCost = 0

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
	targetDistance = 1,
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
monster.events = {
	"playerAttackSound"
}
monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "BLESSED !", yell = false},
	{text = "WHERE YOU THINK YOU GO, HEH ?", yell = true},
	{text = "I WILL CRUSH WHO TRY ENTER ON MY TREASURE ROOM!", yell = true},
	{text = "MASTER OF THE NIGHT!", yell = true}
}

monster.loot = {
	{id = "small diamond", chance = 25000, maxCount = 10},
	{id = "small sapphire", chance = 25000, maxCount = 10},
	{id = "small emerald", chance = 25000, maxCount = 10},
	{id = "small amethyst", chance = 25000, maxCount = 10},
	{id = "crystal coin", chance = 100000, maxCount = 15},
	{id = "solar axe", chance = 500},
	{id = "magic longsword", chance = 50},
	{id = "phantasmal axe", chance = 700},
	{id = "ghost chestplate", chance = 750},
	{id = "stamina extension", chance = 5000},
	{id = "exercise sword chest", chance = 2500},
	{id = "exercise axe chest", chance = 2500},
	{id = "exercise club chest", chance = 2500},
	{id = "exercise bow chest", chance = 2500},
	{id = "exercise rod chest", chance = 2500},
	{id = "exercise wand chest", chance = 2500},
	{id = "exercise shield chest", chance = 2500},
	{id = "thunderheart cuirass", chance = 1200},
	{id = "thunderheart hauberk", chance = 12000},
	{id = "thunderheart platemail", chance = 12000},
	{id = "thundermind raiment", chance = 1200},
	{id = "thundersoul tabard", chance = 12000},
	{id = "ancestral coin", chance = 2000},
	{id = "magic plate armor", chance = 5000},
	{id = "dragon scale mail", chance = 9500},
	{id = "mastermind shield", chance = 4200},
	{id = "demon shield", chance = 8888},
	{id = "golden armor", chance = 9000},
	{id = "golden legs", chance = 6000},
	{id = "spellbook of warding", chance = 15000},
	{id = "spellbook of mind control", chance = 9500},
	{id = "spellbook of lost souls", chance = 7000},
	{id = "hexagonal ruby", chance = 14000},
	{id = "giant amethyst", chance = 14000},
	{id = "giant topaz", chance = 14000},
	{id = "giant emerald", chance = 14000},
	{id = 26738, chance = 80000, maxCount = 10},
	{id = 26735, chance = 80000, maxCount = 10},
	{id = "great spirit potion", chance = 85000, maxCount = 10},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -850, maxDamage = -2500},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -1000, range = 7, radius = 6, effect = 270, target = false},
	{name ="combat", interval = 3000, chance = 34, type = COMBAT_PHYSICALDAMAGE, minDamage = -1100, maxDamage = -1800, range = 7, radius = 1, shootEffect = 205, target = true},
	{name ="combat", interval = 4000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -1000, maxDamage = -1600, length = 8, spread = 3, effect = 215, target = false},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1900, range = 14, radius = 5, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 4000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -1150, range = 7, radius = 13, effect = 216, target = false},
	{name ="combat", interval = 4000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1950, radius = 14, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 3000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1450, range = 7, radius = 4, effect = 254, target = false}
}

monster.defenses = {
	defense = 85,
	armor = 85,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 300, maxDamage = 1000, effect = 185},
	{name = "speed", chance = 15, interval = 2*1000, speed = 320, effect = 184}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 1},
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
