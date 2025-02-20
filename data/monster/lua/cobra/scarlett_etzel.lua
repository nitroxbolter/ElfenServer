local mType = Game.createMonsterType("Scarlett Etzel")
local monster = {}

monster.description = "a scarlett etzel"
monster.experience = 20000
monster.outfit = {
	lookType = 1006,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
monster.events = {
	"playerAttackSound"
}
monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "energy bar", chance = 100000},
	{id = "platinum coin", chance = 87000, maxCount = 5},
	{id = "green gem", chance = 85000},
	{id = "supreme health potion", chance = 53700, maxCount = 14},
	{id = "ultimate mana potion", chance = 48150, maxCount = 20},
	{id= 2156, chance = 42500}, -- red gem
	{id = "ultimate spirit potion", chance = 34000, maxCount = 6},
	{id = "yellow gem", chance = 29600, maxCount = 2},
	{id = "royal star", chance = 26600, maxCount = 100},
	{id = 7633, chance = 24000}, -- giant shimmering pearl (green)
	{id = "berserk potion", chance = 20300, maxCount = 10},
	{id = "blue gem", chance = 18500, maxCount = 2},
	{id = "bullseye potion", chance = 18500, maxCount = 10},
	{id = "magma coat", chance = 16600},
	{id = "terra rod", chance = 1100},
	{id = "crystal coin", chance = 9200},
	{id = "violet gem", chance = 9000},
	{id = "terra legs", chance = 8500},
	{id = "terra hood", chance = 7400},
	{id = "terra mantle", chance = 7250},
	{id = "magma amulet", chance = 5500},
	{id = "silver token", chance = 6000, maxCount = 4},
	{id = "gold ingot", chance = 5000},
	{id = "terra amulet", chance = 4800},
	{id = "giant sapphire", chance = 4800},
	{id = "magma monocle", chance = 3700},
	{id = "cobra club", chance = 700},
	{id = "cobra axe", chance = 600},
	{id = "cobra crossbow", chance = 600},
	{id = "cobra hood", chance = 400},
	{id = "cobra rod", chance = 650},
	{id = "cobra sword", chance = 650},
	{id = "cobra wand", chance = 650},
	{id = "cobra amulet", chance = 350},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="combat", interval = 2000,chance = 17, type= COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -600, range = 7, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_HOLYDAMAGE, minDamage = -450, maxDamage = -640, length = 7, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -480, maxDamage = -630, radius = 5, effect = CONST_ME_EXPLOSIONHIT, target = false}
}

monster.defenses = {
	defense = 88,
	armor = 88
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
	monster:registerEvent("scarlettThink")
    monster:registerEvent("scarlettHealth")
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
