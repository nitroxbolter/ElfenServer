local mType = Game.createMonsterType("Frost Spider")
local monster = {}
monster.description = "a Frost Spider"
monster.experience = 33000
monster.outfit = {
	lookType = 1318
}

monster.health = 27500
monster.maxHealth = 27500
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
	canWalkOnEnergy = true,
	canWalkOnFire = false,
	canWalkOnPoison = true,
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
	{id = "Platinum Coin", chance = 40000, maxCount = 99},
	{id = "Platinum Coin", chance = 40000, maxCount = 40},
	{id = "advanced mana potion", chance = 11500, maxCount = 3},
	{id = "advanced health potion", chance = 11500, maxCount = 3},
	{id = "advanced spirit potion", chance = 11500, maxCount = 3},
	{id = "warrior helmet", chance = 2560},
	{id = "orcish maul", chance = 3670},
	{id = "headchopper", chance = 3510},
	{id = "blacksteel sword", chance = 3140},
	{id = "tower shield", chance = 3920},
	{id = "green mushroom", chance = 58200, maxCount = 10},
	{id = "mercenary sword", chance = 2070},
	{id = "noble axe", chance = 1050},
	{id = "cranial basher", chance = 2000},
	{id = "heroic axe", chance = 2000},
	{id = "mystic blade", chance = 2000},
	{id = "blessed sceptre", chance = 1600},
	{id = "royal axe", chance = 1600},
	{id = "the justice seeker", chance = 1600},
	{id = "frozen eye", chance = 3750},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1650},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -650, maxDamage = -1850, range = 7, shootEffect = 62, effect = 197, target = false},
	{name ="speed", interval = 1000, chance = 20, speed = -850, range = 7, shootEffect = 64, effect = 231, target = false, duration = 25000},
	{name ="energyfield", interval = 1000, chance = 10, range = 7, radius = 4, shootEffect = 36, target = true}}

monster.defenses = {
	defense = 75,
	armor = 75,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 13},
	{type = COMBAT_EARTHDAMAGE, percent = -4},
	{type = COMBAT_FIREDAMAGE, percent = -9},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 22},
	{type = COMBAT_HOLYDAMAGE , percent = -3},
	{type = COMBAT_DEATHDAMAGE , percent = -7},
	{type = COMBAT_WATERDAMAGE, percent = -40},
	{type = COMBAT_ARCANEDAMAGE, percent = -33},
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
