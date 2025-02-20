local mType = Game.createMonsterType("Charged Mechanic Goblin")
local monster = {}
monster.description = "a Charged Mechanic Goblin"
monster.experience = 55000
monster.outfit = {
	lookType = 1314
}

monster.health = 60000
monster.maxHealth = 60000
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
	targetDistance = 1,
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
	{id = "Crystal Coin", chance = 80000, maxCount = 12},
	{id = "Platinum Coin", chance = 80000, maxCount = 100},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "skull staff", chance = 6500},
	{id = "magic sulphur", chance = 4000},
	{id = "spellbook of mind control", chance = 1370},
	{id = "gold ingot", chance = 11750, maxCount = 1},
	{id = "mortal mace", chance = 950},
	{id = "galea mortis", chance = 900},
	{id = "shadow cowl", chance = 1030},
	{id = "toga mortis", chance = 1100},
	{id = "giant sapphire", chance = 16800},
	{id = "giant emerald", chance = 16800},
	{id = "Gold Token", chance = 68970, maxCount = 2},
	{id = "Chaos Mace", chance = 6900},
	{id = "Skull Staff", chance = 13790},
	{id = "Huge Chunk of Crude Iron", chance = 17240},
	{id = "crown shield", chance = 11111},
	{id = "demon shield", chance = 4166},
	{id = "tower shield", chance = 9090},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1600},
	{name ="combat", interval = 2000, chance = 11, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -1500, radius = 3, effect = 303, target = false},
	{name ="combat", interval = 2000, chance = 7, type = COMBAT_ENERGYDAMAGE, minDamage = -450, maxDamage = -1700, range = 7, shootEffect = 5, effect = 305, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1600, length = 4, spread = 3, effect = 336, target = false}
}

monster.defenses = {
	defense = 140,
	armor = 140,
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
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = 0},
}

monster.immunities = {
	{type = "fire", condition = false},
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
