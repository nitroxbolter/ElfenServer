local SHOP_EXTENDED_OPCODE = 201
local SHOP_OFFERS = {}
local SHOP_CALLBACKS = {}
local SHOP_CATEGORIES = nil
local SHOP_BUY_URL = "" -- can be empty
local SHOP_AD = { -- can be nil
  image = "",
  url = "",
  text = ""
}
local MAX_PACKET_SIZE = 500


function init()
  --  print(json.encode(g_game.getLocalPlayer():getOutfit())) -- in console in otclient, will print current outfit and mount   
 
  SHOP_CATEGORIES = {}

  local category1 = addCategory({
    type="item",
    item=ItemType(28084):getClientId(),
    count=1,
    name="Miscellaneous"
  })
  local category2 = addCategory({
    type="outfit",
    name="Outfits",
    outfit={
        mount=0,
        feet=114,
        legs=114,
        body=116,
        type=143,
        auxType=0,
        addons=3,
        head=2,
        rotating=true
    }
  })
  local category3 = addCategory({
    type="item",
    item=ItemType(26077):getClientId(),
    count=1,
    name="House Decoration"
  })
 
  local category4 = addCategory({
    type="item",
    item=ItemType(16101):getClientId(),
    count=1,
    name="Premium Time"
  })
  local category5 = addCategory({
    type="item",
    item=ItemType(27760):getClientId(),
    count=100,
    name="Exercise Weapon"
  })


 -- category1.addItem(1, 2160, 1, "1 Crystal coin", "description of cristal coin")
  -- category1.addItem(5, 2160, 5, "5 Crystal coin", "description of cristal coin")
 -- category1.addItem(50, 2160, 50, "50 Crystal coin", "description of cristal coin")
 -- category1.addItem(90, 2160, 100, "100 Crystal coin", "description of cristal coin")
 
 category1.addItem(15, 28092, 1, "1 Stat Reset Coin", "Stat reset coin will reset the character stats.")

 category1.addItem(50, 28084, 10, "10 Battlepass Points", "Purchase premium battlepass or shuffle missions, you cannot claim premium rewards if you already completed levels.")
 category1.addItem(220, 28084, 50, "50 Battlepass Points", "Purchase premium battlepass or shuffle missions, you cannot claim premium rewards if you already completed levels.")
 category1.addItem(399, 28084, 100, "100 Battlepass Points", "Purchase premium battlepass or shuffle missions, you cannot claim premium rewards if you already completed levels.")

   category2.addOutfit(750, {
    storage = 535968,
    mount = 0,
  feet = 114,
  legs = 114,
  body = 116,
  type = 909,
  auxType = 0,
  addons = 2,
  head = 2,
  rotating = true,
  name = "Shadowlotus Outfit",
}, "Shadowlotus Outfit", "Full Shadowlotus Outfit with addons.")
category2.addOutfit(750, {
  storage = 535969,
  mount = 0,
feet = 114,
legs = 114,
body = 116,
type = 1237,
auxType = 0,
addons = 2,
head = 2,
rotating = true,
name = "Blade Dancer Outfit",
}, "Blade Dancer Outfit", "Full Blade Dancer Outfit with addons.")
category2.addOutfit(50, {
  storage = 535983,
  mount = 104,
  feet = 0,
  legs = 0,
  body = 0,
  type = 928,
  auxType = 0,
  addons = 0,
  head = 2,
  rotating = true,
  name = "Spirit of Purity"
}, "Spirit of Purity", "Spirit of Purity mount.")
category2.addOutfit(690, {
  storage = 535984,
  mount = 119,
  feet = 0,
  legs = 0,
  body = 0,
  type = 1234,
  auxType = 0,
  addons = 0,
  head = 2,
  rotating = true,
  name = "Glacier Wyrm"
}, "Glacier Wyrm", "Glacier Wyrm mount.")
category2.addOutfit(690, {
  storage = 535985,
  mount = 120,
  feet = 0,
  legs = 0,
  body = 0,
  type = 1235,
  auxType = 0,
  addons = 0,
  head = 2,
  rotating = true,
  name = "Bog Tyrant"
}, "Bog Tyrant", "Bog Tyrant mount.")
category2.addOutfit(690, {
  storage = 535986,
  mount = 121,
  feet = 0,
  legs = 0,
  body = 0,
  type = 1236,
  auxType = 0,
  addons = 0,
  head = 2,
  rotating = true,
  name = "Crimson Fang"
}, "Crimson Fang", "Crimson Fang mount.")
category3.addImage(10000, "/data/images/game/states/haste.png", "Modify store:", "data/creaturescripts/scripts/game_store.lua")
category4.addImage(30, "/data/images/premium/premium_time_30.png", "Premium Time 30 Days", "", customImageBuyAction)
category4.addImage(60, "/data/images/premium/premium_time_60.png", "Premium Time 60 Days", "", customImageBuyAction)
category4.addImage(90, "/data/images/premium/premium_time_90.png", "Premium Time 90 Days", "", customImageBuyAction)
category4.addImage(180, "/data/images/premium/premium_time_180.png", "Premium Time 180 Days", "", customImageBuyAction)


  category5.addItem(5, 27761, 1, "1 Exercise Sword", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(5, 27762, 1, "1 Exercise Axe", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(5, 27763, 1, "1 Exercise Club", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(5, 27764, 1, "1 Exercise Bow", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(5, 27765, 1, "1 Exercise Rod", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(5, 27766, 1, "1 Exercise Wand", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(5, 27767, 1, "1 Exercise Shield", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(15, 27768, 1, "1 Durable Exercise Sword", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(15, 27769, 1, "1 Durable Exercise Axe", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(15, 27770, 1, "1 Durable Exercise Club", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(15, 27771, 1, "1 Durable Exercise Bow", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(15, 27772, 1, "1 Durable Exercise Rod", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(15, 27773, 1, "1 Durable Exercise Wand", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(15, 27774, 1, "1 Durable Exercise Shield", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(140, 27775, 1, "1 Lasting Exercise Sword", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(140, 27776, 1, "1 Lasting Exercise Axe", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(140, 27777, 1, "1 Lasting Exercise Club", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(140, 27778, 1, "1 Lasting Exercise Bow", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(140, 27779, 1, "1 Lasting Exercise Rod", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(140, 27780, 1, "1 Lasting Exercise Wand", "You will receive a box, use it to obtain the exercise weapon.")
  category5.addItem(140, 27781, 1, "1 Lasting Exercise Shield", "You will receive a box, use it to obtain the exercise weapon.")

end

function addCategory(data)
  data['offers'] = {}
  table.insert(SHOP_CATEGORIES, data)
  table.insert(SHOP_CALLBACKS, {})
  local index = #SHOP_CATEGORIES
  return {
    addItem = function(cost, itemId, count, title, description, callback)    
      if not callback then
        callback = defaultItemBuyAction
      end
      table.insert(SHOP_CATEGORIES[index]['offers'], {
        cost=cost,
        type="item",
        item=ItemType(itemId):getClientId(), -- displayed
        itemId=itemId,
        count=count,
        title=title,
        description=description
      })
      table.insert(SHOP_CALLBACKS[index], callback)
    end,
    addOutfit = function(cost, outfit, title, description, callback)
      if not callback then
        callback = defaultOutfitBuyAction
      end
      table.insert(SHOP_CATEGORIES[index]['offers'], {
        cost=cost,
        type="outfit",
        outfit=outfit,
        title=title,
        description=description
      })  
      table.insert(SHOP_CALLBACKS[index], callback)
    end,
    addImage = function(cost, image, title, description, callback)
      if not callback then
        callback = defaultImageBuyAction
      end
      table.insert(SHOP_CATEGORIES[index]['offers'], {
        cost=cost,
        type="image",
        image=image,
        title=title,
        description=description
      })
      table.insert(SHOP_CALLBACKS[index], callback)
    end
  }
end

function getStorePoints(player)
  local points = 0
  local resultId = db.storeQuery("SELECT `points` FROM `znote_accounts` WHERE `id` = " .. player:getAccountId())
  if resultId ~= false then
    points = result.getDataInt(resultId, "points")
    result.free(resultId)
  end
  return points
end

function getStatus(player)
  local status = {
    ad = SHOP_AD,
    points = getStorePoints(player),
    buyUrl = SHOP_BUY_URL
  }
  return status
end

function sendJSON(player, action, data, forceStatus)
  local status = nil
  if not player:getStorageValue(1150001) or player:getStorageValue(1150001) + 10 < os.time() or forceStatus then
      status = getStatus(player)
  end
  player:setStorageValue(1150001, os.time())
 

  local buffer = json.encode({action = action, data = data, status = status})
  local s = {}
  for i=1, #buffer, MAX_PACKET_SIZE do
     s[#s+1] = buffer:sub(i,i+MAX_PACKET_SIZE - 1)
  end
  local msg = NetworkMessage()
  if #s == 1 then
    msg:addByte(50)
    msg:addByte(SHOP_EXTENDED_OPCODE)
    msg:addString(s[1])
    msg:sendToPlayer(player)
    return
  end
  -- split message if too big
  msg:addByte(50)
  msg:addByte(SHOP_EXTENDED_OPCODE)
  msg:addString("S" .. s[1])
  msg:sendToPlayer(player)
  for i=2,#s - 1 do
    msg = NetworkMessage()
    msg:addByte(50)
    msg:addByte(SHOP_EXTENDED_OPCODE)
    msg:addString("P" .. s[i])
    msg:sendToPlayer(player)
  end
  msg = NetworkMessage()
  msg:addByte(50)
  msg:addByte(SHOP_EXTENDED_OPCODE)
  msg:addString("E" .. s[#s])
  msg:sendToPlayer(player)
end

function sendMessage(player, title, msg, forceStatus)
  sendJSON(player, "message", {title=title, msg=msg}, forceStatus)
end

function onExtendedOpcode(player, opcode, buffer)
  if opcode ~= SHOP_EXTENDED_OPCODE then
    return false
  end
  local status, json_data = pcall(function() return json.decode(buffer) end)
  if not status then
    return false
  end

  local action = json_data['action']
  local data = json_data['data']
  if not action or not data then
    return false
  end

  if SHOP_CATEGORIES == nil then
    init()  
  end

  if action == 'init' then
    sendJSON(player, "categories", SHOP_CATEGORIES)
  elseif action == 'buy' then
    processBuy(player, data)
  elseif action == "history" then
    sendHistory(player)
  end
  return true
end

function processBuy(player, data)
  local categoryId = tonumber(data["category"])
  local offerId = tonumber(data["offer"])
  local offer = SHOP_CATEGORIES[categoryId]['offers'][offerId]
  local callback = SHOP_CALLBACKS[categoryId][offerId]
  if not offer or not callback or data["title"] ~= offer["title"] or data["cost"] ~= offer["cost"] then
    sendJSON(player, "categories", SHOP_CATEGORIES) -- refresh categories, maybe invalid
    return sendMessage(player, "Error!", "Invalid offer")    
  end
  local points = getStorePoints(player)
  if not offer['cost'] or offer['cost'] > points or points < 1 then
    return sendMessage(player, "Error!", "You don't have enough points to buy " .. offer['title'] .."!", true)  
  end
  local status = callback(player, offer)
  if status == true then  
    db.query("UPDATE `znote_accounts` set `points` = `points` - " .. offer['cost'] .. " WHERE `id` = " .. player:getAccountId())
    db.asyncQuery("INSERT INTO `shop_history` (`account`, `player`, `date`, `title`, `cost`, `details`) VALUES ('" .. player:getAccountId() .. "', '" .. player:getGuid() .. "', NOW(), " .. db.escapeString(offer['title']) .. ", " .. db.escapeString(offer['cost']) .. ", " .. db.escapeString(json.encode(offer)) .. ")")
    return sendMessage(player, "Success!", "You bought " .. offer['title'] .."!", true)
  end
  if status == nil or status == false then
    status = "Unknown error while buying " .. offer['title']
  end
  sendMessage(player, "Error!", status)
end

function sendHistory(player)
  if player:getStorageValue(1150002) and player:getStorageValue(1150002) + 10 > os.time() then
    return -- min 10s delay
  end
  player:setStorageValue(1150002, os.time())
 
  local history = {}
  local resultId = db.storeQuery("SELECT * FROM `shop_history` WHERE `account` = " .. player:getAccountId() .. " order by `id` DESC")

  if resultId ~= false then
    repeat
      local details = result.getDataString(resultId, "details")
      local status, json_data = pcall(function() return json.decode(details) end)
      if not status then  
        json_data = {
          type = "image",
          title = result.getDataString(resultId, "title"),
          cost = result.getDataInt(resultId, "cost")
        }
      end
      table.insert(history, json_data)
      history[#history]["description"] = "Bought on " .. result.getDataString(resultId, "date") .. " for " .. result.getDataInt(resultId, "cost") .. " points."
    until not result.next(resultId)
    result.free(resultId)
  end
 
  sendJSON(player, "history", history)
end

-- BUY CALLBACKS
-- May be useful: print(json.encode(offer))

function defaultItemBuyAction(player, offer)
  -- todo: check if has capacity
  if player:addStoreItem(offer["itemId"], offer["count"], false) then
    playSoundPlayer(player, "purchase.ogg")
    return true
  end
  return "Can't add items! Do you have enough space?";
end
-------------------------------------------------------

function defaultOutfitBuyAction(player, offer)
  local outfit = offer['outfit']
  local mountId = outfit['mount']

  if player:getStorageValue(outfit['storage']) > 0 then
      local message = "You already have this " .. outfit['name'] .. "!"
      player:sendTextMessage(MESSAGE_INFO_DESCR, message)
      return false
  end

  local points = getStorePoints(player)
  if offer['cost'] > points or points < 1 then
      player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have enough points to buy this outfit")
      return false
  end

  if mountId ~= 0 then
    player:addMount(mountId) -- Adding the mount to the player
  end

  local outfit = offer["outfit"]
  local outfitId = player:addOutfit(outfit["type"], outfit["id"], outfit["addons"], mountId) -- Use the specified mountId

  if outfitId ~= 0 then
    player:setStorageValue(outfit['storage'], 1)

    -- Check if addons should be added
    if outfit["addons"] == 1 then
      player:addOutfitAddon(outfit["type"], 1) -- Add addon 1
      playSoundPlayer(player, "purchase.ogg")
    elseif outfit["addons"] == 2 then
      player:addOutfitAddon(outfit["type"], 1) -- Add addon 1
      player:addOutfitAddon(outfit["type"], 2) -- Add addon 2
      playSoundPlayer(player, "purchase.ogg")
    end

    local message = "You bought the " .. outfit['name'] .. "!"
    player:sendTextMessage(MESSAGE_INFO_DESCR, message)
    return true
  else
    return "Couldn't add the outfit to the player."
  end
end


function defaultImageBuyAction(player, offer)
  return "default image buy action is not implemented"
end

function customImageBuyAction(player, offer)
  local premiumDays = offer['cost'] 
  if not premiumDays or premiumDays <= 0 then
    return "Error: Invalid premium days"
  end
  playSoundPlayer(player, "purchase.ogg")
  player:addPremiumDays(premiumDays)
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You bought " .. premiumDays .. " premium days!")
  return true
end