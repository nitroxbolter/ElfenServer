local mType = Game.createMonsterType("Bone Slicer")
local monster = {}
monster.description = "a Bone Slicer"
monster.experience = 6300
monster.outfit = {
	lookType = 949
}

monster.health = 6200
monster.maxHealth = 6200
monster.corpse = 26691
monster.speed = 280
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4*1000,
	chance = 20
}

monster.getLevel = {
	minLevel = 1,
	maxLevel = 50
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	challengeable = true,
	convinceable = false,
	ignoreSpawnBlock = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 1,
	staticAttackChance = 90
}
monster.events = {
	"playerAttackSound"
}
monster.summons = {
}

monster.voices = {
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100}, -- gold coin
	{id = 2152, chance = 100000, maxCount = 6}, -- platinum coin
	{id = 8472, chance = 11400, maxCount = 2}, -- great spirit potion
	{id = 7590, chance = 10300, maxCount = 2}, -- great mana potion
	{id = 7591, chance = 9700, maxCount = 2}, -- great health potion
	{id = "Dark Armor", chance = 10000},
	{id = "Guardian Shield", chance = 9000},
	{id = "Magma Boots", chance = 3600},
	{id = "Lightning Pendant", chance = 3500},
	{id = "Lightning Headband", chance = 3100},
	{id = "Magma Monocle", chance = 1400},
	{id = "Magma Legs", chance = 1300}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -250, radius = 4, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -600, shootEffect = CONST_ANI_THROWINGKNIFE, target = true},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_PHYSICALDAMAGE, minDamage = -120, maxDamage = -200, length = 5, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},
}

monster.defenses = {
	defense = 50,
	armor = 80,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 16},
	{type = COMBAT_DEATHDAMAGE, percent = -8},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 6},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "fire", combat = true, condition = true},
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
