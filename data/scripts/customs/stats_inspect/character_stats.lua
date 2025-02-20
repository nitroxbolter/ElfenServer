local ITEM_ID = 28092

local statIndexByName = {
  ["strength"] = CHARSTAT_STRENGTH,
  ["intelligence"] = CHARSTAT_INTELLIGENCE,
  ["dexterity"] = CHARSTAT_DEXTERITY,
  ["vitality"] = CHARSTAT_VITALITY,
  ["spirit"] = CHARSTAT_SPIRIT,
  ["wisdom"] = CHARSTAT_WISDOM
}

local statNameByIndex = {
  [CHARSTAT_STRENGTH] = "strength",
  [CHARSTAT_INTELLIGENCE] = "intelligence",
  [CHARSTAT_DEXTERITY] = "dexterity",
  [CHARSTAT_VITALITY] = "vitality",
  [CHARSTAT_SPIRIT] = "spirit",
  [CHARSTAT_WISDOM] = "wisdom"
}

-- this is VISUAL ONLY for the client, to change actual values, you have to edit sources
local valuePerStat = {
  [CHARSTAT_STRENGTH] = 1,
  [CHARSTAT_INTELLIGENCE] = 1,
  [CHARSTAT_DEXTERITY] = 1,
  [CHARSTAT_VITALITY] = 1,
  [CHARSTAT_SPIRIT] = 1,
  [CHARSTAT_WISDOM] = 1,
}

-- max points that player can add to single stat
StatsMaxValues = {
  [CHARSTAT_STRENGTH] = 20,
  [CHARSTAT_INTELLIGENCE] = 20,
  [CHARSTAT_DEXTERITY] = 20,
  [CHARSTAT_VITALITY] = 20,
  [CHARSTAT_SPIRIT] = 20,
  [CHARSTAT_WISDOM] = 0,
}

-- +1 point at X level
local StatsConfig = {
  levels = {
    10,
	  20,
	  30,
	  40,
	  50,
	  60,
	  70,
	  80,
	  90,
	  100,
	  110,
	  120,
	  130,
	  140,
	  150,
	  160,
	  170,
	  180,
	  190,
	  200,
  }
}

local LoginEvent = CreatureEvent("CharacterStatsLogins")

function LoginEvent.onLogin(player)
  player:registerEvent("CharacterStatsExtendeds")
  player:registerEvent("CharacterStatsAdvances")

  local maxPossiblePoints = #StatsConfig.levels
  if player:getStatsPoints() > maxPossiblePoints then
    player:setStorageValue(PlayerStorageKeys.characterStatsPoints, maxPossiblePoints)
    player:updateCharacterStats()
  end

  player:updateCharacterStats()
  return true
end

local AdvanceEvent = CreatureEvent("CharacterStatsAdvances")

function AdvanceEvent.onAdvance(player, skill, oldLevel, newLevel)
  if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
    return true
  end

  for i = 1, #StatsConfig.levels do
    local level = StatsConfig.levels[i]
    if newLevel >= level and player:getStorageValue(PlayerStorageKeys.characterStatsLevel) < i then
      player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have gained a new stat point.")
      player:addStatsPoints(1)
      player:setStorageValue(PlayerStorageKeys.characterStatsLevel, i)
    end
  end

  return true
end

local ExtendedEvent = CreatureEvent("CharacterStatsExtendeds")

function ExtendedEvent.onExtendedOpcode(player, opcode, buffer)
  if opcode == ExtendedOPCodes.CODE_CHARSTATS then
    local status, json_data =
      pcall(
      function()
        return json.decode(buffer)
      end
    )
    if not status then
      return
    end

    local action = json_data.action
    local data = json_data.data

    if action == "add" then
      addStat(player, data)
    elseif action == "remove" then
      removeStat(player, data)
    elseif action == "reset" then
      resetStats(player)
    end
  end
end

function addStat(player, data)
  if player:getStatsPoints() <= 0 then
    return
  end
  local statId = statIndexByName[data]
  if player:getCharacterStat(statId) >= StatsMaxValues[statId] then
    return
  end
  player:addCharacterStat(statId, 1)
  player:addStatsPoints(-1, true)

  player:updateCharacterStats()
end

function removeStat(player, data)
  local statId = statIndexByName[data]
  if player:getCharacterStat(statId) <= 0 then
    return
  end
  player:addCharacterStat(statId, -1)
  player:addStatsPoints(1, true)

  player:updateCharacterStats()
end

function resetStats(player)
  if player:getItemCount(ITEM_ID) == 0 then
    player:popupFYI("You need " .. ItemType(ITEM_ID):getName() .. " to reset stats")
    return
  end
  for i = CHARSTAT_FIRST, CHARSTAT_SPIRIT do
    local points = player:getStorageValue(PlayerStorageKeys.characterStatsPoints + i + 1)
    if points > 0 then
      player:setStorageValue(PlayerStorageKeys.characterStatsPoints + i + 1, -1)
      player:addStatsPoints(points, true)
    end
  end

  for i = CHARSTAT_FIRST, CHARSTAT_SPIRIT do
    local points = player:getCharacterStat(i)
    player:setCharacterStat(i, 0)
    player:addStatsPoints(points, true)
  end
  
  player:removeItem(ITEM_ID, 1)

  player:updateCharacterStats()
end

function Player:updateCharacterStats()
  local stats = {}
  for i = CHARSTAT_FIRST, CHARSTAT_SPIRIT do
    stats[statNameByIndex[i]] = {
      points = self:getCharacterStat(i),
      value = valuePerStat[i] * self:getCharacterStat(i)
    }
  end

  local data = {
    points = self:getStatsPoints(),
    stats = stats
  }

  self:sendExtendedOpcode(ExtendedOPCodes.CODE_CHARSTATS, json.encode({action = "update", data = data}))
end

function Player:addStatsPoints(points, silent)
  local val = self:getStorageValue(PlayerStorageKeys.characterStatsPoints)
  if val == -1 then
    val = 0
  end
  local newVal = val + points
  self:setStorageValue(PlayerStorageKeys.characterStatsPoints, newVal)

  if not silent then
    self:updateCharacterStats()
  end
end


function Player:getStatsPoints()
  local val = self:getStorageValue(PlayerStorageKeys.characterStatsPoints)
  if val == -1 then
    val = 0
  end

  return val
end

LoginEvent:type("login")
LoginEvent:register()
AdvanceEvent:type("advance")
AdvanceEvent:register()
ExtendedEvent:type("extendedopcode")
ExtendedEvent:register()
