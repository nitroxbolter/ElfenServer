--- Script created by
--- ______     __         ______     __  __   
---/\  __ \   /\ \       /\  ___\   /\_\_\_\  
---\ \  __ \  \ \ \____  \ \  __\   \/_/\_\/_ 
--- \ \_\ \_\  \ \_____\  \ \_____\   /\_\/\_\
---  \/_/\/_/   \/_____/   \/_____/   \/_/\/_/
                                           

print(">> Pet System Loaded")

local pet_experience = 633451
local pet_level = 633452
local pet_id = 633453
local pet_name = 633454

local cooldown_storage = 808815
local cooldown_duration = 1

function createPet(cid, petName)
  local player = Player(cid)
  if not player then
    return
  end

  local vocationId = getPlayerVocation(player)
  local vocationBaseId = player:getVocation():getId()

  local summons = player:getSummons()
  for _, summon in ipairs(summons) do
    if summon:isMonster() then
      player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a pet or familiar summoned.")
      return
    end
  end

  local currentCooldown = player:getStorageValue(cooldown_storage)
  if currentCooldown > os.time() then
    local remainingCooldown = currentCooldown - os.time()
    local minutes = math.ceil(remainingCooldown / 60)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to wait " .. minutes .. " more minutes before summoning a Familiar again.")
    return
  end

  local pet = nil

  if vocationId == VOCATION.ID.SORCERER or vocationBaseId == VOCATION.ID.MASTER_SORCERER then
    if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Frost Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Frost Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
      pet = Game.createMonster("Frost Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Black Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Black Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
      pet = Game.createMonster("Black Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Swamp Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Swamp Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice0) == 1 then
      pet = Game.createMonster("Swamp Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Stone Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Stone Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
      pet = Game.createMonster("Stone Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Fire Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Fire Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
      pet = Game.createMonster("Fire Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
      pet = Game.createMonster("Sorcerer Familiar", player:getPosition())
    else
      pet = Game.createMonster("Sorcerer Familiar", player:getPosition())
    end
  elseif vocationId == VOCATION.ID.DRUID or vocationBaseId == VOCATION.ID.ELDER_DRUID then
    if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Frost Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Frost Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
      pet = Game.createMonster("Frost Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Black Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Black Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
      pet = Game.createMonster("Black Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Swamp Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Swamp Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice0) == 1 then
      pet = Game.createMonster("Swamp Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Stone Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Stone Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
      pet = Game.createMonster("Stone Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Fire Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Fire Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
      pet = Game.createMonster("Fire Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
      pet = Game.createMonster("Druid Familiar", player:getPosition())
    else
      pet = Game.createMonster("Druid Familiar", player:getPosition())
    end
  elseif vocationId == VOCATION.ID.KNIGHT or vocationBaseId == VOCATION.ID.ELITE_KNIGHT then
    if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Frost Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Frost Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
      pet = Game.createMonster("Frost Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Black Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Black Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
      pet = Game.createMonster("Black Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Swamp Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Swamp Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice0) == 1 then
      pet = Game.createMonster("Swamp Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Stone Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Stone Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
      pet = Game.createMonster("Stone Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Fire Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Fire Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
      pet = Game.createMonster("Fire Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
      pet = Game.createMonster("Knight Familiar", player:getPosition())
    else
      pet = Game.createMonster("Knight Familiar", player:getPosition())
    end
  elseif vocationId == VOCATION.ID.PALADIN or vocationBaseId == VOCATION.ID.ROYAL_PALADIN then
    if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Frost Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Frost Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
      pet = Game.createMonster("Frost Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Black Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Black Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
      pet = Game.createMonster("Black Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Swamp Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Swamp Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice0) == 1 then
      pet = Game.createMonster("Swamp Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Stone Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Stone Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
      pet = Game.createMonster("Stone Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Fire Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Fire Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
      pet = Game.createMonster("Fire Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
      pet = Game.createMonster("Paladin Familiar", player:getPosition())
    else
      pet = Game.createMonster("Paladin Familiar", player:getPosition())
    end
  elseif vocationId == VOCATION.ID.ILLUSIONIST or vocationBaseId == VOCATION.ID.ARCH_ILLUSIONIST then
    if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Frost Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Frost Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
      pet = Game.createMonster("Frost Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Black Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Black Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
      pet = Game.createMonster("Black Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Swamp Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Swamp Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice0) == 1 then
      pet = Game.createMonster("Swamp Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Stone Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Stone Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
      pet = Game.createMonster("Stone Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
      pet = Game.createMonster("Fire Dracadet [3]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
      pet = Game.createMonster("Fire Dracadet [2]", player:getPosition())
    elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
      pet = Game.createMonster("Fire Dracadet", player:getPosition())
    elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
      pet = Game.createMonster("Illusionist Familiar", player:getPosition())
    else
      pet = Game.createMonster("Illusionist Familiar", player:getPosition())
    end
  elseif vocationId == VOCATION.ID.NONE then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You need a vocation to summon a Familiar.")
  end

  if pet ~= nil then
    playSound(player, "monster_summoned.ogg")
    pet:setMaster(player)
    pet:registerEvent('SummonFollow')
    local petStorageValue = 655421 + player:getAccountId()
    pet:setStorageValue(tostring(petStorageValue), pet:getId())
    pet:setStorageValue(pet_experience, 0) 
    pet:setStorageValue(pet_level, 1)
    player:setStorageValue(pet_id, pet:getId())
    player:setStorageValue(pet_name, petName)
    player:setStorageValue(cooldown_storage, os.time() + cooldown_duration)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have summoned your Familiar.")
  else
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Unable to create the Familiar.")
  end
end


local pet_storage_experience = 633451
local pet_storage_level = 633452

function loadPlayerPet(player)
  local petId = player:getStorageValue(pet_id)
  if petId > 0 then
    local pet = Creature(petId)  
    if pet then
      local accountId = player:getAccountId()
      local query = db.storeQuery("SELECT `pet_experience`, `pet_level` FROM `players` WHERE `id` = " .. player:getGuid())
      if query ~= nil then
        local petExperience = result.getNumber(query, "pet_experience")
        local petLevel = result.getNumber(query, "pet_level")
        result.free(query)

        pet:setStorageValue(pet_storage_experience, petExperience)
        pet:setStorageValue(pet_storage_level, petLevel)
        return pet
      end
    end
  else
    return true  
  end
  return nil  
end



local storageGet = TalkAction("!summonfamiliar")

storageGet.onSay = function(player, words)
  if player:getLevel() >= 200 then
  if words == "!summonfamiliar" then
    local playerPos = player:getPosition()
    local summons = Game.getSpectators(playerPos, false, true, 1, 1, 1, 1)
    for _, summon in ipairs(summons) do
      if summon:isMonster() and summon:getMaster() == player then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have a pet or familiar summoned.")
        return false
      end
    end
    loadPlayerPet(player)
    local vocation = player:getVocation()
    local petName = ""
    if vocation == VOCATION.ID.KNIGHT or vocation == VOCATION.ID.ELITE_KNIGHT then
      if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
        petName = "Frost Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
        petName = "Frost Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
        petName = "Frost Dracadet"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
        petName = "Black Dracadet [3]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
        petName = "Black Dracadet [2]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
        petName = "Black Dracadet"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
        petName = "Swamp Dracadet [3]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
        petName = "Swamp Dracadet [2]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice) == 1 then
        petName = "Swamp Dracadet"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
        petName = "Stone Dracadet [3]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
        petName = "Stone Dracadet [2]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
        petName = "Stone Dracadet"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
        petName = "Fire Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
        petName = "Fire Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
        petName = "Fire Dracadet"
      elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
        petName = "Knight Familiar"
      else
         petName = "Knight Familiar"
      end
    elseif vocation == VOCATION.ID.SORCERER or vocation == VOCATION.ID.MASTER_SORCERER then
      if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
        petName = "Frost Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
        petName = "Frost Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
        petName = "Frost Dracadet"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
        petName = "Black Dracadet [3]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
        petName = "Black Dracadet [2]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
        petName = "Black Dracadet"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
        petName = "Swamp Dracadet [3]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
        petName = "Swamp Dracadet [2]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice) == 1 then
        petName = "Swamp Dracadet"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
        petName = "Stone Dracadet [3]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
        petName = "Stone Dracadet [2]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
        petName = "Stone Dracadet"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
        petName = "Fire Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
        petName = "Fire Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
        petName = "Fire Dracadet"
      elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
        petName = "Sorcerer Familiar"
      else
        petName = "Sorcerer Familiar"
      end
    elseif vocation == VOCATION.ID.DRUID or vocation == VOCATION.ID.ELDER_DRUID then
      if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
        petName = "Frost Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
        petName = "Frost Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
        petName = "Frost Dracadet"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
        petName = "Black Dracadet [3]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
        petName = "Black Dracadet [2]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
        petName = "Black Dracadet"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
        petName = "Swamp Dracadet [3]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
        petName = "Swamp Dracadet [2]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice) == 1 then
        petName = "Swamp Dracadet"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
        petName = "Stone Dracadet [3]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
        petName = "Stone Dracadet [2]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
        petName = "Stone Dracadet"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
        petName = "Fire Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
        petName = "Fire Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
        petName = "Fire Dracadet"
      elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
        petName = "Druid Familiar"
      else
        petName = "Druid Familiar"
      end
    elseif vocation == VOCATION.ID.PALADIN or vocation == VOCATION.ID.ROYAL_PALADIN then
      if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
        petName = "Frost Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
        petName = "Frost Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
        petName = "Frost Dracadet"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
        petName = "Black Dracadet [3]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
        petName = "Black Dracadet [2]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
        petName = "Black Dracadet"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
        petName = "Swamp Dracadet [3]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
        petName = "Swamp Dracadet [2]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice) == 1 then
        petName = "Swamp Dracadet"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
        petName = "Stone Dracadet [3]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
        petName = "Stone Dracadet [2]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
        petName = "Stone Dracadet"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
        petName = "Fire Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
        petName = "Fire Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
        petName = "Fire Dracadet"
      elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
        petName = "Paladin Familiar"
      else
        petName = "Paladin Familiar"
      end
    elseif vocation == VOCATION.ID.ILLUSIONIST or vocation == VOCATION.ID.ARCH_ILLUSIONIST then
      if player:getStorageValue(Expeditions.FrostDracadetPetChoice3) == 1 then
        petName = "Frost Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice2) == 1 then
        petName = "Frost Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FrostDracadetPetChoice) == 1 then
        petName = "Frost Dracadet"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice3) == 1 then
        petName = "Black Dracadet [3]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice2) == 1 then
        petName = "Black Dracadet [2]"
      elseif player:getStorageValue(Expeditions.BlackDracadetPetChoice) == 1 then
        petName = "Black Dracadet"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice3) == 1 then
        petName = "Swamp Dracadet [3]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice2) == 1 then
        petName = "Swamp Dracadet [2]"
      elseif player:getStorageValue(Expeditions.SwampDracadetPetChoice) == 1 then
        petName = "Swamp Dracadet"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice3) == 1 then
        petName = "Stone Dracadet [3]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice2) == 1 then
        petName = "Stone Dracadet [2]"
      elseif player:getStorageValue(Expeditions.StoneDracadetPetChoice) == 1 then
        petName = "Stone Dracadet"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice3) == 1 then
        petName = "Fire Dracadet [3]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice2) == 1 then
        petName = "Fire Dracadet [2]"
      elseif player:getStorageValue(Expeditions.FireDracadetPetChoice) == 1 then
        petName = "Fire Dracadet"
      elseif player:getStorageValue(Expeditions.NormalFamiliarChoice) == 1 then
        petName = "Illusionist Familiar"
      else
        petName = "Illusionist Familiar"
      end
    elseif vocation == VOCATION.ID.NONE then
      player:sendTextMessage(MESSAGE_INFO_DESCR, "You need a vocation to summon a Familiar.")
    end
    createPet(player, petName)
    return false
  end
else
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You need level 200 to summon your Familiar.")
end
  return true
end

storageGet:separator(" ")
storageGet:register()

local petLevelAction = TalkAction("!familiarlevel")

function calculateNextLevelExperience(level)
  return level * level * 200
end

petLevelAction.onSay = function(player, words)
  if words == "!familiarlevel" then
    local pet = loadPlayerPet(player)
    
    if pet then
      local petLevel = pet:getStorageValue(pet_level)
      local petExperience = pet:getStorageValue(pet_experience)
      local petNextLevelExperience = calculateNextLevelExperience(petLevel)
      
      player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Your Familiar is currently level %d.\nYour Familiar has experience %d/%d.", petLevel, petExperience, petNextLevelExperience))
    else
      player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have a Familiar summoned.")
    end
    
    return false
  end
  
  return true
end

petLevelAction:separator(" ")
petLevelAction:register()


local familiarChoiceModal = TalkAction("!choosefamiliar")

function showFamiliarChoiceWindow(player)
    local modal = ModalWindow(1000, "Choose your Familiar", "Select your Familiar.")
    player:registerEvent("choiceFamiliar")

    modal:addChoice(1, "Normal Familiar")
    modal:addChoice(2, "Black Dracadet")
    modal:addChoice(3, "Black Dracadet [2]")
    modal:addChoice(4, "Black Dracadet [3]")
    modal:addChoice(5, "Frost Dracadet")
    modal:addChoice(6, "Frost Dracadet [2]")
    modal:addChoice(7, "Frost Dracadet [3]")
    modal:addChoice(8, "Swamp Dracadet")
    modal:addChoice(9, "Swamp Dracadet [2]")
    modal:addChoice(10, "Swamp Dracadet [3]")
    modal:addChoice(11, "Stone Dracadet")
    modal:addChoice(12, "Stone Dracadet [2]")
    modal:addChoice(13, "Stone Dracadet [3]")
    modal:addChoice(14, "Fire Dracadet")
    modal:addChoice(15, "Fire Dracadet [2]")
    modal:addChoice(16, "Fire Dracadet [3]")


    modal:setDefaultEnterButton(100)
    modal:setDefaultEscapeButton(101)

    modal:addButton(100, "OK")
    modal:addButton(101, "Cancel")
    modal:sendToPlayer(player)
end

familiarChoiceModal.onSay = function(player, words, param)
    showFamiliarChoiceWindow(player)
    return false
end

familiarChoiceModal:register()
