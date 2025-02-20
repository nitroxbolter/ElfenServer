local mType = Game.createMonsterType("Bone Scarvenger")
local monster = {}
monster.description = "a Bone Scarvenger"
monster.experience = 5650
monster.outfit = {
	lookType = 946
}

monster.health = 5500
monster.maxHealth = 5500
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
	{id = "beastslayer axe", chance = 4260},
	{id = "mercenary sword", chance = 2500},
	{id = "spiked squelcher", chance = 410},
	{id = "small sapphire", chance = 5000},
	{id = "royal helmet", chance = 270},
	{id = "stealth ring", chance = 1200},
	{id = "terra legs", chance = 960},
	{id = "terra boots", chance = 480},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -280},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -400, radius = 6, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 9, minDamage = -50, maxDamage = -190, radius = 8, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -50, maxDamage = -250, range = 7, radius = 6, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true},
}

monster.defenses = {
	defense = 75,
	armor = 50,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_DEATHDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE, percent = -40}
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
