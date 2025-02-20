local mType = Game.createMonsterType("Twisterror")
local monster = {}
monster.description = "a Twisterror"
monster.experience = 34000
monster.outfit = {
	lookType = 1364,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
}

monster.health = 33000
monster.maxHealth = 33000
monster.corpse = 26691
monster.speed = 400
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.summons = {
}

monster.events = {
	"playerAttackSound"
}

monster.voices = {
}

monster.loot = { 
	{id = "Crystal Coin", chance = 40000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000},
	{id = "green crystal splinter", chance = 4920},
	{id = "brown crystal splinter", chance = 5250},
	{id = "blue crystal splinter", chance = 5000},
	{id = "terra boots", chance = 4000},
	{id = "spellbook of mind control", chance = 2000},
	{id = "underworld rod", chance = 3800},
	{id = "springsprout rod", chance = 3800},
	{id = "Terra Boots", chance = 5000},
	{id = "Terra Hood", chance = 4000},
	{id = "Terra Mantle", chance = 3500},
	{id = "Terra Legs", chance = 3000},
	{id = "Terra Amulet", chance = 8000},
	{id = "Stone Skin Amulet", chance = 8000},
	{id = "Lightning Pendant", chance = 8000},
	{id = "Lightning Boots", chance = 5000},
	{id = "Lightning Legs", chance = 3000},
	{id = "Lightning Headband", chance = 4000},
	{id = "Spellweaver's Robe", chance = 2000},
	{id = "Wand of Defiance", chance = 2500},
	{id = "mystical ribbon", chance = 2000},
	{id = "gorger antlers", chance = 9000, maxCount = 2},
	{id = "hellhunter eye", chance = 7000, maxCount = 2},
	{id = "mummified demon finger", chance = 11000},
	{id = "demonic core essence", chance = 6000},
	{id = "monstrosity", chance = 7000}


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -420, maxDamage = -1800, range = 7, shootEffect = 5, effect = 238, target = true},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_ARCANEDAMAGE, minDamage = -450, maxDamage = -1700, range = 7, shootEffect = 86, effect = 312, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_WATERDAMAGE, minDamage = -600, maxDamage = -1800, range = 7, shootEffect = 65, effect = 232, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -780, maxDamage = -1400, range = 7, shootEffect = 84, effect = 234, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -650, maxDamage = -1800, range = 7, shootEffect = 60, target = false},
	{name = "speed", chance = 15, interval = 2*1000, speed = -700, radius = 1, target = true, duration = 30*1000, effect = CONST_ME_MAGIC_RED},
}

monster.defenses = {
	defense = 75,
	armor = 75,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -11},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -19},
	{type = COMBAT_DEATHDAMAGE , percent = 12},
	{type = COMBAT_WATERDAMAGE, percent = 8},
	{type = COMBAT_ARCANEDAMAGE, percent = 12},
}

monster.immunities = {
	{type = "fire", condition = true},
	{type = "drown", condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getId() == creature:getId() then
	end
end

mType.onDisappear = function(monster, creature)
	if monster:getId() == creature:getId() then
	end
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
	if monster:getId() == creature:getId() then
	end
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
