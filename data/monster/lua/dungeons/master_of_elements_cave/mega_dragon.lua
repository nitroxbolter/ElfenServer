local mType = Game.createMonsterType("Mega Dragon")
local monster = {}
monster.description = "a Mega Dragon"
monster.experience = 10500
monster.outfit = {
	lookType = 978
}

monster.health = 10000
monster.maxHealth = 10000
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
	challengeable = true,
	convinceable = false,
	ignoreSpawnBlock = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 3,
	staticAttackChance = 90,
	runHealth = 5000
}

monster.summons = {
}
monster.events = {
	"playerAttackSound"
}
monster.voices = {
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 17}, 
	{id = 7591, chance = 11400, maxCount = 2}, 
	{id = 7590, chance = 10300, maxCount = 2}, 
	{id = "greater guardian gem", chance = 9500},
	{id = "greater marksman gem", chance = 6000},
	{id = "greater sage gem", chance = 9500},
	{id = "greater mystic gem", chance = 8000},
	{id = "molten dragon essence", chance = 6000},
	{id = "mega dragon heart", chance = 4200},
	{id = "strange eye", chance = 10800, maxCount = 2},
	{id = "strange poison gland", chance = 14000},
	{id = "gold-scaled sentinel", chance = 1900},
	{id = "icy cranial basher", chance = 1700},
	{id = "earth cranial basher", chance = 1700},
	{id = "energy cranial basher", chance = 1700},
	{id = "fiery cranial basher", chance = 1700},
	{id = "hammer of wrath", chance = 1500},
	{id = "golden armor", chance = 4000},
	{id = "magic plate armor", chance = 2800},
	{id = "demon shield", chance = 3200},
	{id = "common star inlay stone", chance = 9000},
	{id = "common two stars inlay stone", chance = 7000},
	{id = "common three stars inlay stone", chance = 6000},
	{id = "rare star inlay stone", chance = 6000},
	{id = "rare two stars inlay stone", chance = 4500},
	{id = "rare three stars inlay stone", chnace = 3000},
	{id = "star extractor", chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -270, maxDamage = -590, radius = 4, effect = 209, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -280, maxDamage = -410, radius = 4, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -280, maxDamage = -370, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -590, length = 5, spread = 3, effect = CONST_ME_ICEATTACK, target = false}
}

monster.defenses = {
	defense = 55,
	armor = 60,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 70},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
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
