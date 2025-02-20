local mType = Game.createMonsterType("Pale Lancer")
local monster = {}
monster.description = "a Pale Lancer"
monster.experience = 25000
monster.outfit = {
	lookType = 1382
}

monster.health = 19900
monster.maxHealth = 19900
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
	{id = "Crystal Coin", chance = 70000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "crushed bone", chance = 4800, maxCount = 2},
	{id = "woven fabric", chance = 4000},
	{id = "small diamond", chance = 7000, maxCount = 4},
	{id = "small emerald", chance = 4000, maxCount = 4},
	{id = "small ruby", chance = 6000, maxCount = 4},
	{id = "small topaz", chance = 3000, maxCount = 4},
	{id = "Crystal Mace", chance = 6000},
	{id = "Fire Sword", chance = 7000},
	{id = "Amber Staff", chance = 6000},
	{id = "Crystalline Armor", chance = 3000},
	{id = "Dragon Necklace", chance = 10000},
	{id = "Twiceslicer", chance = 3000},
	{id = "ham",  chance = 35000, maxCount = 3},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1720},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -800, maxDamage = -1450, range = 7, shootEffect = 83, effect = 315, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -950, maxDamage = -1780, radius = 3, effect = 348, target = false},
	{name ="condition", type = CONDITION_BEWITCHED, interval = 2000, chance = 10, minDamage = -650, maxDamage = -1600, radius = 3, effect = CONST_ME_POISONAREA, target = false},
}

monster.defenses = {
	defense = 85,
	armor = 85,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -4},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -7},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 0},
	{type = COMBAT_ARCANEDAMAGE, percent = 14},
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
