SkillsTable = {
	[0] = { --[[ SKILL_FIST ]]
	  stage = {
		[{1, 60}] = 100,
		[{61, 80}] = 75,
		[{81, 100}] = 45,
		[{101, 110}] = 25,
		[{111, 125}] = 18,
		[{126, 149}] = 12,
		[{150}] = 5
	  },
	  rate = configKeys.RATE_SKILL
	},
	[1] = { --[[ SKILL_CLUB ]]
	  stage = {
		[{1, 60}] = 100,
		[{61, 80}] = 75,
		[{81, 100}] = 45,
		[{101, 110}] = 25,
		[{111, 125}] = 18,
		[{126, 149}] = 12,
		[{150}] = 5
	  },
	  rate = configKeys.RATE_SKILL
	},
	[2] = { --[[ SKILL_SWORD ]]
	  stage = {
		[{1, 60}] = 100,
		[{61, 80}] = 75,
		[{81, 100}] = 45,
		[{101, 110}] = 25,
		[{111, 125}] = 18,
		[{126, 149}] = 12,
		[{150}] = 5
	  },
	  rate = configKeys.RATE_SKILL
	},
	[3] = { --[[ SKILL_AXE ]]
	  stage = {
		[{1, 60}] = 100,
		[{61, 80}] = 75,
		[{81, 100}] = 45,
		[{101, 110}] = 25,
		[{111, 125}] = 18,
		[{126, 149}] = 12,
		[{150}] = 5
	  },
	  rate = configKeys.RATE_SKILL
	},
	[4] = { --[[ SKILL_DISTANCE ]]
	  stage = {
		[{1, 60}] = 100,
		[{61, 80}] = 75,
		[{81, 100}] = 45,
		[{101, 110}] = 25,
		[{111, 125}] = 18,
		[{126, 149}] = 12,
		[{150}] = 5
	  },
	  rate = configKeys.RATE_SKILL
	},
	[5] = { --[[ SKILL_SHIELD ]]
	  stage = {
		[{1, 60}] = 100,
		[{61, 80}] = 75,
		[{81, 100}] = 45,
		[{101, 110}] = 25,
		[{111, 125}] = 18,
		[{126, 149}] = 12,
		[{150}] = 5
	  },
	  rate = configKeys.RATE_SKILL
	},
	[6] = { --[[ SKILL_FISHING ]]
	  stage = {
		[{1, 60}] = 100,
		[{61, 80}] = 75,
		[{81, 100}] = 45,
		[{101, 110}] = 25,
		[{111, 125}] = 18,
		[{126, 149}] = 12,
		[{150}] = 5
	  },
	  rate = configKeys.RATE_SKILL
	},
	[7] = { --[[ SKILL_MAGLEVEL ]]
	  stage = {
		[{1, 60}] = 70,
		[{61, 80}] = 50,
		[{81, 100}] = 35,
		[{101, 110}] = 20,
		[{111, 125}] = 14,
		[{126, 149}] = 8,
		[{150}] = 3
	  },
	  rate = configKeys.RATE_MAGIC
	}
  }
  
  local talkaction = TalkAction("!serverinfo")
  
  
  function talkaction.onSay(player, words, param)
	function getSkillsRate(level, skill)
	  local skillRange = SkillsTable[skill]
	  
	  if skillRange and skillRange.stage then
		for _, sLevel in pairs(skillRange.stage) do
		  if type(sLevel) == "table" and #sLevel == 2 then
			local minLevel, maxLevel = sLevel[1], sLevel[2]
			
			if minLevel and maxLevel and level >= minLevel and level <= maxLevel then
			  return skillRange.rate
			end
		  end
		end
	  end
	  
	  return configManager.getNumber(skillRange.rate)
	end
  
	local playerLevel = player:getLevel()
	local expRate = Game.getExperienceStage(playerLevel)
   
	local fistRate = getSkillsRate(player:getEffectiveSkillLevel(0), 0)
	local clubRate = getSkillsRate(player:getEffectiveSkillLevel(1), 1)
	local swordRate = getSkillsRate(player:getEffectiveSkillLevel(2), 2)
	local axeRate = getSkillsRate(player:getEffectiveSkillLevel(3), 3)
	local distanceRate = getSkillsRate(player:getEffectiveSkillLevel(4), 4)
	local shieldingRate = getSkillsRate(player:getEffectiveSkillLevel(5), 5)
	local fishingRate = getSkillsRate(player:getEffectiveSkillLevel(6), 6)
	local magicRate = getSkillsRate(player:getEffectiveSkillLevel(7), 7)
	local lootRate = configManager.getNumber(configKeys.RATE_LOOT)
   
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Server Info:"
	  .. "\nExp rate: " .. expRate
	  .. "\nFist fighting rate: " .. fistRate
	  .. "\nClub fighting rate: " .. clubRate
	  .. "\nSword fighting rate: " .. swordRate
	  .. "\nAxe fighting rate: " .. axeRate
	  .. "\nDistance fighting rate: " .. distanceRate
	  .. "\nShielding rate: " .. shieldingRate
	  .. "\nFishing rate: " .. fishingRate
	  .. "\nMagic rate: " .. magicRate
	  .. "\nLoot rate: " .. lootRate)
	  
	return false
  end
  
  talkaction:register()