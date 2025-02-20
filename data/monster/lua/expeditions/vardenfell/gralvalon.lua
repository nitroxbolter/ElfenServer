local mType = Game.createMonsterType("Gralvalon")
local monster = {}
monster.description = "a Gralvalon"
monster.experience = 36000
monster.outfit = {
	lookType = 1365,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
}

monster.health = 34000
monster.maxHealth = 34000
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
	{id = "zaoan helmet", chance = 3800},
	{id = "assassin star", chance = 9000, maxCount = 10},
	{id = "crystalline arrow", chance = 11000, maxCount = 10},
	{id = "giant topaz", chance = 3000},
	{id = "bow of cataclysm", chance = 1700},
	{id = "depth lorica", chance = 1600},
	{id = "prismatic bolt", chance = 5000, maxCount = 10},
	{id = "yalahari armor", chance = 1400},
	{id = "prismatic boots", chance = 2800},
	{id = "platinum coin", chance = 100000, maxCount = 100},
	{id = "stone skin amulet", chance = 9000},
	{id = "gold ingot", chance = 4000},
	{id = "paladin armor", chance = 6000},
	{id = "zaoan legs", chance = 4000},
	{id = "boots of haste", chance = 3000},
	{id = "demon shield", chance = 2000},
	{id = "mystical ribbon", chance = 2000},
	{id = "gorger antlers", chance = 9000, maxCount = 2},
	{id = "hellhunter eye", chance = 7000, maxCount = 2},
	{id = "mummified demon finger", chance = 11000},
	{id = "demonic core essence", chance = 6500},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -1200, shootEffect = 81},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1900, range = 7, shootEffect = 89, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_WATERDAMAGE, minDamage = -820, maxDamage = -1700, shootEffect = 67, effect = 289, target = true, range = 6},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1600, range = 7, shootEffect = 249, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 14},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -14},
	{type = COMBAT_HOLYDAMAGE , percent = -11},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 9},
	{type = COMBAT_ARCANEDAMAGE, percent = -7},
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
