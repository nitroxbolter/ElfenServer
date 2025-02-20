local mType = Game.createMonsterType("Hellhunter Inferniarch")
local monster = {}
monster.description = "a Hellhunter Inferniarch"
monster.experience = 33000
monster.outfit = {
	lookType = 1365
}

monster.health = 32500
monster.maxHealth = 32500
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
	{id = "ornate crossbow", chance = 2200},
	{id = "rift bow", chance = 2200},
	{id = "dragon scale mail", chance = 2200},
	{id = "dragon scale legs", chance = 400},
	{id = "dragon scale helmet", chance = 380},
	{id = "golden boots", chance = 1800},
	{id = "magic plate armor", chance = 2800},
	{id = "prismatic bolt", chance = 5000, maxCount = 10},
	{id = "crystalline arrow", chance = 5000, maxCount = 10},
	{id = "giant topaz", chance = 3000},
	{id = "small ruby", chance = 6000, maxCount = 3},
	{id = "small sapphire", chance = 4000, maxCount = 3},
	{id = "small emerald", chance = 3000, maxCount = 3},
	{id = "mystical ribbon", chance = 2000},
	{id = "gorger antlers", chance = 9000, maxCount = 2},
	{id = "hellhunter eye", chance = 5000, maxCount = 2},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -1400, shootEffect = 81},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1400, range = 7, shootEffect = 89, target = false},
	{name ="condition", type = CONDITION_BEWITCHED, interval = 2000, chance = 10, minDamage = -720, maxDamage = -1860, range = 7, shootEffect = 86, effect = 209, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -550, maxDamage = -1300, range = 7, shootEffect = 249, target = false}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 11},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -3},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -9},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = -4},
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
