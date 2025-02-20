local mType = Game.createMonsterType("Drume")
local monster = {}

monster.description = "Drume"
monster.experience = 25000
monster.outfit = {
	lookType = 1061,
	lookHead = 38,
	lookBody = 76,
	lookLegs = 57,
	lookFeet = 114,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 35000
monster.maxHealth = 35000
monster.race = "blood"
monster.corpse = 26691
monster.speed = 330


monster.summon = {
	maxSummons = 3,
	summons = {
		{name = "preceptor lazare", chance = 10, interval = 8000, count = 1},
		{name = "grand commander soeren", chance = 10, interval = 8000, count = 1},
		{name = "grand chaplain gaunder", chance = 10, interval = 8000, count = 1}
	}
}

monster.changeTarget = {
	interval = 4000,
	chance = 25
}
monster.events = {
	"playerAttackSound"
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
}

monster.loot = {
	{id = "energy bar", chance = 100000},
	{id = "platinum coin", chance = 100000, maxCount = 5},
	{id = "supreme health potion", chance = 57831, maxCount = 20},
	{id = "ultimate mana potion", chance = 55723, maxCount = 20},
	{id = "yellow gem", chance = 35843, maxCount = 2},
	{id = 2156, chance = 35542, maxCount = 2}, -- red gem
	{id = "ultimate spirit potion", chance = 31627, maxCount = 6},
	{id = "royal star", chance = 31325, maxCount = 100},
	{id = "bullseye potion", chance = 22590, maxCount = 10},
	{id = "berserk potion", chance = 21988, maxCount = 10},
	{id = "blue gem", chance = 21687, maxCount = 2},
	{id = "mastermind potion", chance = 17771, maxCount = 10},
	{id = "green gem", chance = 17470, maxCount = 2},
	{id = 7633, chance = 15060}, -- giant shimmering pearl (green)
	{id = "gold ingot", chance = 13253},
	{id = "terra rod", chance = 11145},
	{id = "crystal coin", chance = 10241},
	{id = "stone skin amulet", chance = 10241},
	{id = "silver token", chance = 8735, maxCount = 3},
	{id = "terra legs", chance = 8735},
	{id = "terra mantle", chance = 7831},
	{id = "raw watermelon tourmaline", chance = 7229},
	{id = "wand of voodoo", chance = 6024},
	{id = "violet gem", chance = 5723},
	{id = "terra hood", chance = 4819},
	{id = "terra amulet", chance = 4518},
	{id = "giant sapphire", chance = 4217},
	{id = "giant ruby", chance = 3012},
	{id = "underworld rod", chance = 2410},
	{id = "lion spangenhelm", chance = 300},
	{id = "lion plate", chance = 300},
	{id = "lion shield", chance = 300},
	{id = "lion longsword", chance = 350},
	{id = "lion hammer", chance = 300},
	{id = "lion axe", chance = 300},
	{id = "lion longbow", chance = 300},
	{id = "lion spellbook", chance = 350},
	{id = "lion wand", chance = 300},
	{id = "lion amulet", chance = 300},
	{id = "lion rod", chance = 300},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 6000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -950, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2750, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2500, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -800, radius = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 3300, chance = 24, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -700, length = 4, spread = 0, effect = CONST_ME_ICEATTACK, target = false},
	{name ="singlecloudchain", interval = 6000, chance = 34, minDamage = -400, maxDamage = -900, range = 4, effect = CONST_ME_ENERGYHIT, target = true}
}

monster.defenses = {
	defense = 60,
	armor = 82,
	{name ="combat", interval = 4000, chance = 40, type = COMBAT_HEALING, minDamage = 300, maxDamage = 800, effect = 185, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onAppear = function(monster, creature)
end

mType:register(monster)
