RARITY_CHANCE = {
	fromMonster = {
		{ id = ITEM_RARITY_COMMON, chance = 1 },
		{ id = ITEM_RARITY_RARE, chance = 50 },
		{ id = ITEM_RARITY_EPIC, chance = 50 },
		{ id = ITEM_RARITY_LEGENDARY, chance = 50 },
		{ id = ITEM_RARITY_BRUTAL, chance = 50 },
	},

	fromQuest = {
		{ id = ITEM_RARITY_COMMON, chance = 20 },
		{ id = ITEM_RARITY_RARE, chance = 30 },
		{ id = ITEM_RARITY_EPIC, chance = 12 },
		{ id = ITEM_RARITY_LEGENDARY, chance = 5 },
		{ id = ITEM_RARITY_BRUTAL, chance = 2 },
	}
}

RARITY_MODIFIERS = {
	{ id = ITEM_RARITY_COMMON, amount = 0, factor = 0 },
	{ id = ITEM_RARITY_RARE, amount = 2, factor = 20 },
	{ id = ITEM_RARITY_EPIC, amount = 4, factor = 30 },
	{ id = ITEM_RARITY_LEGENDARY, amount = 6, factor = 50 },
	{ id = ITEM_RARITY_BRUTAL, amount = 7, factor = 80 },
}

RARITY_ATTRIBUTES = {
	{ id = CONST_SLOT_HEAD, attributes = {
		{	-- Energy Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Elemental Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_DEATHDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DROWNDAMAGE, COMBAT_ICEDAMAGE}, 
			min = 1,
			max = 2,
			chance = 1
		},
		{	-- Magic Level
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAGICPOINTS},
			min = 3,
			max = 4,
			chance = 7
		},
		{	-- Melee & Shielding
			id = TOOLTIP_ATTRIBUTE_SKILL,
			type = {SKILL_CLUB, SKILL_SWORD, SKILL_AXE, SKILL_SHIELD},
			min = 2,
			max = 3,
			chance = 4
		},
		{	-- Distance & Shielding
			id = TOOLTIP_ATTRIBUTE_SKILL,
			type = {SKILL_DISTANCE, SKILL_SHIELD},
			min = 2,
			max = 3,
			chance = 4
		},
		{	-- Extra healing
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_HEALING},
			min = 8,
			max = 12,
			chance = 5
		},
		{	-- Extra gold from monsters
			id = TOOLTIP_ATTRIBUTE_INCREMENT_COINS,
			min = 10,
			max = 20,
			chance = 4
		},
	}},
	{ id = CONST_SLOT_ARMOR, attributes = {
		{ 	-- Physical Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_PHYSICALDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Energy Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Fire Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_FIREDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Elemental Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_DEATHDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DROWNDAMAGE, COMBAT_ICEDAMAGE}, 
			min = 1,
			max = 2,
			chance = 1
		},
		{	-- Magic Level
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAGICPOINTS},
			min = 3,
			max = 4,
			chance = 7
		},
		{	-- Melee & Shielding
			id = TOOLTIP_ATTRIBUTE_SKILL,
			type = {SKILL_CLUB, SKILL_SWORD, SKILL_AXE, SKILL_SHIELD},
			min = 2,
			max = 3,
			chance = 4
		},
		{	-- Distance & Shielding
			id = TOOLTIP_ATTRIBUTE_SKILL,
			type = {SKILL_DISTANCE, SKILL_SHIELD},
			min = 2,
			max = 3,
			chance = 4
		},
		{	-- Extra healing
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_HEALING},
			min = 8,
			max = 12,
			chance = 5
		},
		{	-- Extra gold from monsters
			id = TOOLTIP_ATTRIBUTE_INCREMENT_COINS,
			min = 10,
			max = 20,
			chance = 4
		},
		{	-- Extra Health
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAXHITPOINTS},
			min = 25,
			max = 90,
			chance = 4
		},
	}},
	{ id = CONST_SLOT_LEGS, attributes = {
		{	-- Energy Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Elemental Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_DEATHDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DROWNDAMAGE, COMBAT_ICEDAMAGE}, 
			min = 1,
			max = 2,
			chance = 1
		},
		{	-- Magic Level
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAGICPOINTS},
			min = 3,
			max = 4,
			chance = 7
		},
		{	-- Melee & Shielding
			id = TOOLTIP_ATTRIBUTE_SKILL,
			type = {SKILL_CLUB, SKILL_SWORD, SKILL_AXE, SKILL_SHIELD},
			min = 2,
			max = 3,
			chance = 4
		},
		{	-- Distance & Shielding
			id = TOOLTIP_ATTRIBUTE_SKILL,
			type = {SKILL_DISTANCE, SKILL_SHIELD},
			min = 2,
			max = 3,
			chance = 4
		},
		{	-- Extra healing
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_HEALING},
			min = 8,
			max = 12,
			chance = 5
		},
		{	-- Extra gold from monsters
			id = TOOLTIP_ATTRIBUTE_INCREMENT_COINS,
			min = 10,
			max = 20,
			chance = 4
		},
		{	-- Experience % bonus
			id = TOOLTIP_ATTRIBUTE_EXPERIENCE,
			min = 5,
			max = 10,
			chance = 4
		},
	}},
	{ id = CONST_SLOT_SHIELD, attributes = {
		{	-- Physical Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_PHYSICALDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Energy Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Fire Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_FIREDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Elemental Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_DEATHDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DROWNDAMAGE, COMBAT_ICEDAMAGE}, 
			min = 1,
			max = 2,
			chance = 1
		},
		{	-- Shielding
			id = TOOLTIP_ATTRIBUTE_SKILL,
			type = {SKILL_SHIELD},
			min = 2,
			max = 3,
			chance = 4
		},
		{	-- Melee & Shielding
			id = TOOLTIP_ATTRIBUTE_SKILL,
			type = {SKILL_CLUB, SKILL_SWORD, SKILL_AXE, SKILL_SHIELD},
			min = 2,
			max = 3,
			chance = 4
		},
		{	-- Distance & Shielding
			id = TOOLTIP_ATTRIBUTE_SKILL,
			type = {SKILL_DISTANCE, SKILL_SHIELD},
			min = 2,
			max = 3,
			chance = 4
		},
		{	-- Extra healing
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_HEALING},
			min = 8,
			max = 12,
			chance = 5
		},
		{	-- Extra gold from monsters
			id = TOOLTIP_ATTRIBUTE_INCREMENT_COINS,
			min = 10,
			max = 20,
			chance = 4
		},
		{	-- Extra Health
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAXHITPOINTS},
			min = 25,
			max = 90,
			chance = 4
		},
		{	-- Extra Defense
			id = TOOLTIP_ATTRIBUTE_EXTRADEFENSE,
			min = 2,
			max = 4,
			chance = 2
		},
	}},
	{ id = CONST_SLOT_SPELLBOOK, attributes = {
		{	-- Energy Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Fire Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_FIREDAMAGE},
			min = 2,
			max = 5,
			chance = 5
		},
		{	-- Elemental Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_DEATHDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_ICEDAMAGE}, 
			min = 1,
			max = 2,
			chance = 1
		},
		{	-- Magic Level
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAGICPOINTS},
			min = 3,
			max = 4,
			chance = 7
		},
		{	-- Extra healing
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_HEALING},
			min = 8,
			max = 12,
			chance = 5
		},
		{	-- Extra gold from monsters
			id = TOOLTIP_ATTRIBUTE_INCREMENT_COINS,
			min = 10,
			max = 20,
			chance = 4
		},
		{	-- Extra Mana
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAXMANAPOINTS},
			min = 25,
			max = 90,
			chance = 4
		},
	}},
	{ id = CONST_SLOT_FEET, attributes = {
		{	-- Movement Speed
			id = TOOLTIP_ATTRIBUTE_SPEED,
			min = 3,
			max = 4,
			chance = 7
		},
		{	-- Extra healing
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_HEALING},
			min = 8,
			max = 12,
			chance = 5
		},
		{	-- Experience % bonus
			id = TOOLTIP_ATTRIBUTE_EXPERIENCE,
			min = 5,
			max = 10,
			chance = 4
		},
		{	-- Elemental Protection
			id = TOOLTIP_ATTRIBUTE_RESISTANCES,
			type = {COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_DEATHDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DROWNDAMAGE, COMBAT_ICEDAMAGE}, 
			min = 1,
			max = 2,
			chance = 1
		},
	}},
	{ id = CONST_SLOT_WEAPON, attributes = {
		{	-- Physical Damage
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_PHYSICALDAMAGE},
			min = 2,
			max = 4,
			chance = 5
		},
		{	-- Energy Damage
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_ENERGYDAMAGE},
			min = 2,
			max = 4,
			chance = 5
		},
		{	-- Fire Damage
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_FIREDAMAGE},
			min = 2,
			max = 4,
			chance = 5
		},
		{	-- Elemental Damage
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_DEATHDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_ICEDAMAGE}, 
			min = 1,
			max = 2,
			chance = 1
		},
		{	-- Critical Hit chance
			id = TOOLTIP_ATTRIBUTE_CRITICALHIT_CHANCE,
			min = 90,
			max = 100,
			chance = 10
		},
	}},
	{ id = CONST_SLOT_WAND, attributes = {
		{	-- Energy Damage
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_ENERGYDAMAGE},
			min = 2,
			max = 4,
			chance = 5
		},
		{	-- Fire Damage
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_FIREDAMAGE},
			min = 2,
			max = 4,
			chance = 5
		},
		{	-- Elemental Damage
			id = TOOLTIP_ATTRIBUTE_INCREMENTS,
			type = {COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_DEATHDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_ICEDAMAGE}, 
			min = 1,
			max = 2,
			chance = 1
		},
		{	-- Critical Hit chance
			id = TOOLTIP_ATTRIBUTE_CRITICALHIT_CHANCE,
			min = 1,
			max = 2,
			chance = 1
		},
		{	-- Magic Level
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAGICPOINTS},
			min = 3,
			max = 4,
			chance = 7
		},
	}},
	{ id = CONST_SLOT_NECKLACE, attributes = {
		{	-- Extra Health
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAXHITPOINTS},
			min = 20,
			max = 50,
			chance = 4
		},
		{	-- Extra Mana
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAXMANAPOINTS},
			min = 20,
			max = 50,
			chance = 4
		},	
	}},
	{ id = CONST_SLOT_RING, attributes = {
		{	-- Magic Level
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAGICPOINTS},
			min = 1,
			max = 2,
			chance = 7
		},
	}},
	{ id = CONST_SLOT_BACKPACK, attributes = {
		{	-- Extra Health
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAXHITPOINTS},
			min = 20,
			max = 50,
			chance = 4
		},
		{	-- Extra Mana
			id = TOOLTIP_ATTRIBUTE_STATS,
			type = {STAT_MAXMANAPOINTS},
			min = 20,
			max = 50,
			chance = 4
		},	
	}},
}