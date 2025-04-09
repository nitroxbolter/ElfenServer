#include "otpch.h"

#include "itemattributes.h"

static struct I {
	const char* name;
	int type;
}
itemrarityattributes[] = {
	{ "id", LUA_TNUMBER },
	{ "type", LUA_TTABLE },
	{ "min", LUA_TUSERDATA },
	{ "max", LUA_TUSERDATA },
	{ "chance", LUA_TNUMBER },
	{ nullptr, 0 }
};

bool ItemRarityAttributes::loadChances(lua_State* L)
{
	auto getChances = [&](const char* name, bool fromMonster) {
		lua_getfield(L, -1, name); // Use the provided field name
		if (!lua_istable(L, -1)) {
			std::cout << "[Warning - ItemAttributes::loadChances] Missing " << name << " node." << std::endl;
			return false;
		}

		lua_pushnil(L);
		while (lua_next(L, -2)) {
			lua_getfield(L, -1, "id");
			if (!lua_isnumber(L, -1)) {
				std::cout << "[Warning - ItemAttributes::loadChances] Missing id." << std::endl;
				return false;
			}

			ItemRarity_t rarityId = static_cast<ItemRarity_t>(lua_tonumber(L, -1));
			lua_pop(L, 1);

			lua_getfield(L, -1, "chance");
			if (!lua_isnumber(L, -1)) {
				std::cout << "[Warning - ItemAttributes::loadChances] Missing chance." << std::endl;
				return false;
			}

			int32_t chance = static_cast<int32_t>(lua_tonumber(L, -1)); // Corrected casting
			lua_pop(L, 1);

			m_chances[fromMonster][rarityId] = chance; // Store the chance with the correct field name
			lua_pop(L, 1);
		}

		lua_pop(L, 1);
		return true;
	};

	lua_getglobal(L, "RARITY_CHANCE");

	if (!getChances("fromMonster", true) || !getChances("fromQuest", false)) {
		lua_pop(L, 1);
		return false;
	}

	lua_pop(L, 1);
	return true;
}

bool ItemRarityAttributes::loadModifiers(lua_State* L)
{
	lua_getglobal(L, "RARITY_MODIFIERS");
	for (uint16_t i = 1; ; i++)
	{
		lua_rawgeti(L, -1, i);
		if (lua_isnil(L, -1)) {
			lua_pop(L, 1);
			break;
		}

		lua_getfield(L, -1, "id");
		if (!lua_isnumber(L, -1)) {
			std::cout << "[Warning - ItemAttributes::loadModifiers] Missing rarity id." << std::endl;
			return false;
		}

		ItemRarity_t rarityId = static_cast<ItemRarity_t>(lua_tonumber(L, -1));
		lua_pop(L, 1);

		lua_getfield(L, -1, "amount");
		if (!lua_isnumber(L, -1)) {
			std::cout << "[Warning - ItemAttributes::loadModifiers] Missing amount." << std::endl;
			return false;
		}

		int32_t amount = lua_tonumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, -1, "factor");
		if (!lua_isnumber(L, -1)) {
			std::cout << "[Warning - ItemAttributes::loadModifiers] Missing factor." << std::endl;
			return false;
		}

		int32_t factor = lua_tonumber(L, -1);
		lua_pop(L, 1);
		
		m_modifiers[rarityId] = {amount, factor};
		lua_pop(L, 1);
	}

	return true;
}

bool ItemRarityAttributes::loadAttributes(lua_State* L)
{
	lua_getglobal(L, "RARITY_ATTRIBUTES");
	for (uint16_t i = 1; ; i++)
	{
		lua_rawgeti(L, -1, i);
		if (lua_isnil(L, -1)) {
			lua_pop(L, 1);
			break;
		}

		lua_getfield(L, -1, "id");
		if (!lua_isnumber(L, -1)) {
			std::cout << "[Warning - ItemAttributes::loadAttributes] Missing slot id." << std::endl;
			return false;
		}

		slots_t slotId = static_cast<slots_t>(lua_tonumber(L, -1));
		lua_pop(L, 1);

		lua_getfield(L, -1, "attributes");
		if (!lua_istable(L, -1)) {
			std::cout << "[Warning - ItemAttributes::loadAttributes] Missing attributes node." << std::endl;
			return false;
		}

		lua_pushnil(L);
		while (lua_next(L, -2)) {
			ItemRarityAttributesData data;
			for (uint16_t j = 0; itemrarityattributes[j].name != nullptr; j++) {
				const std::string name = itemrarityattributes[j].name;
				const int type = itemrarityattributes[j].type;

				lua_getfield(L, -1, itemrarityattributes[j].name);
				if (type == LUA_TNUMBER && lua_isnumber(L, -1)) {
					if (name == "id") {
						data.id = static_cast<ItemTooltipAttributes_t>(lua_tonumber(L, -1));
					}
					else if (name == "chance") {
						data.chance = lua_tonumber(L, -1);
					}
				}
				else if (type == LUA_TTABLE && lua_istable(L, -1)) {
					if (name == "type") {
						lua_pushnil(L);
						while (lua_next(L, -2)) {
							data.types.push_back(lua_tonumber(L, -1));
							lua_pop(L, 1);
						}
					}
				}
				else if (type == LUA_TUSERDATA) {
					if (lua_istable(L, -1)) {
						lua_pushnil(L);
						while (lua_next(L, -2)) {
							if (name == "min") {
								data.range.first.push_back(lua_tonumber(L, -1));
								lua_pop(L, 1);
							}
							else if (name == "max") {
								data.range.second.push_back(lua_tonumber(L, -1));
								lua_pop(L, 1);
							}
						}
					}
					else if (lua_isnumber(L, -1)) {
						if (name == "min") {
							data.range.first.push_back(lua_tonumber(L, -1));
						}
						else if (name == "max") {
							data.range.second.push_back(lua_tonumber(L, -1));
						}
					}
				}

				lua_pop(L, 1);
			}

			m_attributes[slotId].push_back(data);
			lua_pop(L, 1);
		}

		lua_pop(L, 1);
		lua_pop(L, 1);
	}

	return true;
}

bool ItemRarityAttributes::load()
{
	lua_State* L = luaL_newstate();
	if (!L) {
		throw std::runtime_error("Failed to allocate memory in ItemAttributes");
	}

	luaL_openlibs(L);
	LuaScriptInterface::registerEnums(L);

	if (luaL_dofile(L, "data/LUA/rarityAttributes.lua")) {
		std::cout << "[Error - rarityAttributes] " << lua_tostring(L, -1) << std::endl;
		lua_close(L);
		return false;
	}

	if (!loadChances(L) || !loadModifiers(L) || !loadAttributes(L)) {
		return false;
	}

	lua_close(L);
	return true;
}

ItemRarity_t ItemRarityAttributes::getRandomRarityId(bool fromMonster) const
{
	auto itChances = m_chances.find(fromMonster);
	if (itChances == m_chances.end()) {
		return ITEM_RARITY_NONE;
	}

	for (auto& itChance : itChances->second) {
		if (uniform_random(0, 100) <= itChance.second) {
			return itChance.first;
		}
	}

	return ITEM_RARITY_COMMON;
}

void ItemRarityAttributes::applyFactor(int32_t& value, int32_t factor)
{
	int32_t oldValue = value;
	value += value * factor / 100;
	if (value == oldValue)
	{
		// If the value was too small to be increased by the rarity factor add a chance to increase the value by 1
		if (uniform_random(1, factor)) {
			value++;
		}
	}
}

bool ItemRarityAttributes::setRandomAttributes(ItemRarity_t rarityId, slots_t slotId, std::multimap<ItemTooltipAttributes_t, std::pair<int32_t, IntegerVector>>* itemAttributes)
{
	itemAttributes->clear();

	auto itModifiers = m_modifiers.find(rarityId);
	if (itModifiers == m_modifiers.end()) {
		std::cout << "[ItemRarityAttributes::setRandomAttributes] - Warning, missing rarity level of id =" << (uint16_t)rarityId << "\n";
		return false;
	}

	if (itModifiers->second.first == 0) {
		// No attributes for this rarity level
		return true;
	}

	const auto itAttributes = m_attributes.find(slotId);
	if (itAttributes == m_attributes.end()) {
		// No attributes for this slot found
		std::cout << "[ItemRarityAttributes::setRandomAttributes] - Warning, missing attributes for slot id = " << (uint16_t)slotId << "\n";
		return false;
	}

	const auto& attributes = itAttributes->second;
	for (int32_t i = 1; i <= itModifiers->second.first; ++i) {
		ItemTooltipAttributes_t attributeId = TOOLTIP_ATTRIBUTE_NONE;
		ItemRarityAttributesData attributeData;
		while (attributeId == TOOLTIP_ATTRIBUTE_NONE || itemAttributes->find(attributeId) != itemAttributes->end()) {
			const size_t index = uniform_random(0, attributes.size() - 1);
			attributeData = attributes.at(index);
			if (uniform_random(1, 100) <= attributeData.chance) {
				attributeId = attributeData.id;
				break;
			}
		}

		int32_t factor = itModifiers->second.first;
		switch (attributeId) {
			case TOOLTIP_ATTRIBUTE_RESISTANCES:
			case TOOLTIP_ATTRIBUTE_INCREMENTS:
			case TOOLTIP_ATTRIBUTE_SKILL:
			case TOOLTIP_ATTRIBUTE_STATS: {
				int32_t value = uniform_random(attributeData.range.first.at(0), attributeData.range.second.at(0));
				applyFactor(value, factor);

				IntegerVector itemTypes;
				if (attributeId == TOOLTIP_ATTRIBUTE_RESISTANCES || attributeId == TOOLTIP_ATTRIBUTE_INCREMENTS) {
					// Convert combat types to combat IDs
					for (auto& itCombatType : attributeData.types) {
						itemTypes.push_back(combatTypeToIndex(static_cast<CombatType_t>(itCombatType)));
					}
				}
				else {
					itemTypes = attributeData.types;
				}

				const std::pair<int32_t, IntegerVector> types = { value, itemTypes };
				itemAttributes->emplace(attributeId, types);
				break;
			}
			default: {
				int32_t value = uniform_random(attributeData.range.first.at(0), attributeData.range.second.at(0));
				applyFactor(value, factor);

				const std::pair<int32_t, IntegerVector> types = { value, {} };
				itemAttributes->emplace(attributeId, types);
				break;
			}
		}
	}

	return true;
}