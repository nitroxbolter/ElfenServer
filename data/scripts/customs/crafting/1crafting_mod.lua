--- File is called 1crafting_mod.lua , because it needs to be the first file of the folder, if not, then you get errors of nil value about categorys crafting (armorsmith, etc)

Crafting = {}

local CODE_CRAFTING = 91
local fetchLimit = 10
local CHUNK_SIZE = 512
local categories = {"herbalist", "woodcutting", "mining", "generalcrafting", "armorsmith", "weaponsmith", "jewelsmith"}

local skillsStages = {
  { minlevel = 0, maxlevel = 50, multiplier = 1.0 },
  { minlevel = 51, maxlevel = 100, multiplier = 1.5 },
  { minlevel = 101, maxlevel = 200, multiplier = 2.0 },
  { minlevel = 201, multiplier = 3.0 }
}

for _, category in ipairs(categories) do
  local filePath = string.format("data/scripts/customs/crafting/%s.lua", category)
  local status, err = pcall(dofile, filePath)
  if not status then
    print(string.format("[Crafting] Error loading file for category '%s': %s", category, err))
  else
    print(string.format("[Crafting] Successfully loaded category '%s'", category))
  end
end

local categoryAIDs = {
  herbalist = 38820,
  woodcutting = 38821,
  mining = 38822,
  generalcrafting = 38823,
  armorsmith = 38825,
  weaponsmith = 38826,
  jewelsmith = 38824
}

for category, aid in pairs(categoryAIDs) do
  local actionEvent = Action()

  function actionEvent.onUse(player)
    player:showCrafting(category)
    return true
  end

  actionEvent:aid(aid)
  actionEvent:register()
end

local rarities = {
  { id = 1, name = "Common", chance = 10.0 },
  { id = 2, name = "Uncommon", chance = 20.0 },
  { id = 3, name = "Rare", chance = 30.0 },
  { id = 4, name = "Epic", chance = 40.0 },
  { id = 5, name = "Legendary", chance = 50.0 },
  { id = 6, name = "Exotic", chance = 60.0 },
  { id = 7, name = "Mythic", chance = 70.0 },
  { id = 8, name = "Chaos", chance = 80.0 },
  { id = 9, name = "Eternal", chance = 90.0 },
  { id = 10, name = "Divine", chance = 100.0 },
  { id = 11, name = "Phantasmal", chance = 110.0 },
  { id = 12, name = "Celestial", chance = 120.0 },
  { id = 13, name = "Cosmic", chance = 130.0 },
  { id = 14, name = "Abyssal", chance = 140.0 },
  { id = 15, name = "Transcendent", chance = 150.0 },
}

local function rollRarity(player)
  local skillArmorsmith = player:getSkillLevel(SKILL_ARMORSMITH) or 0
  local skillWeaponsmith = player:getSkillLevel(SKILL_WEAPONSMITH) or 0
  local skillJewelsmith = player:getSkillLevel(SKILL_JEWELSMITH) or 0

  local skillCrafting = (skillArmorsmith + skillWeaponsmith + skillJewelsmith) / 3
  print(string.format("[Crafting] Crafting skill: %.2f", skillCrafting))

  local rolledChance = math.random() * 150
  local rarityChance = skillCrafting * 1.5 -- Aumenta a influência da skill
  print(string.format("[Crafting] Rarity chance: %.2f, Rolled chance: %.2f", rarityChance, rolledChance))

  for _, r in ipairs(rarities) do
    if rolledChance <= r.chance + rarityChance then
      print(string.format("[Crafting] Rarity ID: %d, Name: %s", r.id, r.name))
      return r.id, r.name
    end
  end

  return 0, "None"
end

local LoginEvent = CreatureEvent("CraftingLogin")

function LoginEvent.onLogin(player)
  player:registerEvent("CraftingExtended")
  return true
end

LoginEvent:type("login")
LoginEvent:register()

local ExtendedEvent = CreatureEvent("CraftingExtended")

function ExtendedEvent.onExtendedOpcode(player, opcode, buffer)
  if opcode == CODE_CRAFTING then
    local ok, json_data = pcall(function() return json.decode(buffer) end)
    if not ok or not json_data or not json_data.action then
      print("[Crafting] Invalid JSON data:", buffer)
      return
    end

    local action = json_data.action
    local data   = json_data.data

    if action == "fetch" then
      local requestedCategory = data and data.category
      local requestedPage     = data and data.page or 1
      if not requestedCategory or not Crafting[requestedCategory] then
        print("[Crafting] Invalid fetch request:", buffer)
        return
      end
      Crafting:sendCrafts(player, requestedCategory, requestedPage)
    elseif action == "show" then
      local cat = data.category
      if cat and Crafting[cat] then
        player:showCrafting(cat)
      end
    elseif action == "craft" then
      if not data.category or not data.craftId then
        print("[Crafting] Missing category or craftId in 'craft' action")
        return
      end
      local category = data.category
      local craftId  = data.craftId
      Crafting:craft(player, category, craftId)
    end
  end
end

ExtendedEvent:type("extendedopcode")
ExtendedEvent:register()

function Crafting:sendCrafts(player, category, page)
  if not Crafting[category] then
    print("[Crafting] Error: Category '" .. category .. "' not found or empty.")
    return
  end

  local startIndex = (page - 1) * fetchLimit + 1
  local endIndex = math.min(startIndex + fetchLimit - 1, #Crafting[category])
  local craftsData = {}
  for i = startIndex, endIndex do
    local craft = Crafting[category][i]
    if craft then
      local itemType = ItemType(craft.id)
      local mainClient = itemType and itemType:getClientId() or 0
      local playerStorage = craft.storage and player:getStorageValue(craft.storage) or -1

      local craftEntry = {
        index = i,
        name = craft.name,
        id = craft.id,
        clientId = mainClient,
        level = craft.level,
        cost = craft.cost,
        count = craft.count,
        storage = craft.storage or 0,
        playerStorage = playerStorage,
        storageText = craft.storageText or "",
        materials = {}
      }
      if craft.materials then
        for _, mat in ipairs(craft.materials) do
          local matType = ItemType(mat.id)
          local matClient = matType and matType:getClientId() or 0
          table.insert(craftEntry.materials, {
            id = mat.id,
            clientId = matClient,
            count = mat.count,
            player = player:getItemCount(mat.id)
          })
        end
      end

      table.insert(craftsData, craftEntry)
    end
  end

  local bigTable = {
    action = "fetch",
    data = {
      category = category,
      crafts = craftsData,
      page = page,
      totalPages = math.ceil(#Crafting[category] / fetchLimit)
    }
  }

  local bigJson = json.encode(bigTable)
  local msgID = string.format("fetch-%s-page%d", category, page)
  local totalLen = #bigJson
  local offset = 1
  local chunks = {}
  local totalBytes = 0

  while offset <= totalLen do
    local chunkStr = string.sub(bigJson, offset, offset + CHUNK_SIZE - 1)
    offset = offset + CHUNK_SIZE
    table.insert(chunks, chunkStr)
    totalBytes = totalBytes + #chunkStr
  end

  for i, chunkData in ipairs(chunks) do
    local chunkJson = json.encode({
      action = "chunkedFetch",
      chunkData = {
        msgID = msgID,
        index = i,
        count = #chunks,
        payload = chunkData
      }
    })
    player:sendExtendedOpcode(CODE_CRAFTING, chunkJson)
  end
end

local SKILL_HERBALIST = 10
local SKILL_WOODCUTTING = 8
local SKILL_MINING = 9
local SKILL_CRAFTING = 7
local SKILL_ARMORSMITH = 11
local SKILL_WEAPONSMITH = 12
local SKILL_JEWELSMITH = 13

local skillNames = {
  [SKILL_HERBALIST] = "Herbalist",
  [SKILL_WOODCUTTING] = "Woodcutting",
  [SKILL_MINING] = "Mining",
  [SKILL_CRAFTING] = "Crafting",
  [SKILL_ARMORSMITH] = "Armorsmith",
  [SKILL_WEAPONSMITH] = "Weaponsmith",
  [SKILL_JEWELSMITH] = "Jewelsmith"
}

function Crafting:craft(player, category, craftId)
  if not Crafting[category] then
    print("[Crafting] Error: Category '" .. category .. "' not found.")
    return
  end

  local crafts = Crafting[category]
  local craft = crafts[craftId]

  if not craft then
    print("[Crafting] Error: Craft ID '" .. craftId .. "' not found in category '" .. category .. "'.")
    return
  end

  local skillType
  if category == "herbalist" then
    skillType = SKILL_HERBALIST
  elseif category == "woodcutting" then
    skillType = SKILL_WOODCUTTING
  elseif category == "mining" then
    skillType = SKILL_MINING
  elseif category == "generalcrafting" then
    skillType = SKILL_CRAFTING
  elseif category == "armorsmith" then
    skillType = SKILL_ARMORSMITH
  elseif category == "weaponsmith" then
    skillType = SKILL_WEAPONSMITH
  elseif category == "jewelsmith" then
    skillType = SKILL_JEWELSMITH
  end

  local playerSkill = player:getEffectiveSkillLevel(skillType)
  local money = player:getMoney()

  print(string.format("[Crafting] Player skill type: %s, level: %d", skillNames[skillType], playerSkill))

  if craft.storage and craft.storage > 0 then
    local playerStorage = player:getStorageValue(craft.storage)
    if playerStorage ~= 1 then
      local message = "You haven't unlocked this recipe."
      if craft.storageText and craft.storageText ~= "" then
        message = message .. "\n" .. craft.storageText
      end
      player:popupFYI(message)
      return
    end
  end

  if money < craft.cost then
    player:popupFYI(string.format("You don't have enough money: %d.", craft.cost))
    return
  end

  if playerSkill < craft.level then
    player:popupFYI(string.format("You don't have the required %s skill: %d. Your skill is: %d.", skillNames[skillType], craft.level, playerSkill))
    return
  end

  if craft.materials then
    for _, mat in ipairs(craft.materials) do
      if player:getItemCount(mat.id) < mat.count then
        player:popupFYI(string.format(
          "You don't have enough %s (need %d).",
          ItemType(mat.id):getName(),
          mat.count
        ))
        return
      end
    end
  end

  player:sendExtendedOpcode(CODE_CRAFTING, json.encode({action = "craft", data = {success = true}}))

  addEvent(function()
    local rarityId, rarityName = rollRarity(player)
    local item

    if rarityId > 0 then
      item = Game.createItemWithRarity(craft.id, craft.count, rarityId)
      player:popupFYI("Your crafted item has acquired a rarity: " .. rarityName)
    else
      item = Game.createItem(craft.id, craft.count)
      player:popupFYI(string.format("Item Successfully Crafted: %s", ItemType(craft.id):getName()))
    end

    if item then
      if player:addItemEx(item) then
        player:removeMoney(craft.cost)
        if craft.materials then
          for _, material in ipairs(craft.materials) do
            player:removeItem(material.id, material.count)
          end
        end

        local skillMultiplier = 1
        if skillsStages then
          for _, stage in ipairs(skillsStages) do
            if playerSkill >= stage.minlevel then
              if not stage.maxlevel or playerSkill <= stage.maxlevel then
                skillMultiplier = stage.multiplier
                break
              end
            end
          end
        end

        local skillTries = math.floor(skillMultiplier)
        player:addSkillTries(skillType, skillTries)
        Crafting:sendMoney(player)

        local page = math.ceil(craftId / fetchLimit)
        Crafting:sendCrafts(player, category, page)
        playSound(player, "crafting.ogg")
      else
        player:popupFYI("You do not have enough space to receive the crafted item.")
      end
    end
  end, 860)
end

function Crafting:sendMaterials(player, category, craftId)
  if not Crafting[category] then
    return
  end

  if not craftId or not Crafting[category][craftId] then
    return
  end

  local craft = Crafting[category][craftId]
  if not craft then
    return
  end

  local updatedMaterials = {}
  if craft.materials then
    for _, material in ipairs(craft.materials) do
      local playerCount = player:getItemCount(material.id)
      table.insert(updatedMaterials, {
        id = material.id,
        count = material.count,
        player = playerCount
      })
    end
  end

  local jsonData = json.encode({
    action = "materials",
    data = {
      category = category,
      recipeIndex = craftId,
      materials = updatedMaterials
    }
  })
  player:sendExtendedOpcode(CODE_CRAFTING, jsonData)
end

function Crafting:sendMoney(player)
  local moneyData = json.encode({ action = "money", data = player:getMoney() })
  player:sendExtendedOpcode(CODE_CRAFTING, moneyData)
end

function Player:showCrafting(category)
  local selectedCategory = category

  if not Crafting[selectedCategory] then
    return
  end

  Crafting:sendMoney(self)
  Crafting:sendMaterials(self, selectedCategory)
  self:sendExtendedOpcode(CODE_CRAFTING, json.encode({
      action = "show",
      data = {
          category = selectedCategory
      }
  }))
end