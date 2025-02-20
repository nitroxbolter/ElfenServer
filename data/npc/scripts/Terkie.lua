local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)
    npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
    npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
    npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
    npcHandler:onThink()
end

local shop = {
    {id=29503, buy=85, sell=40, name='azure essence'},
    {id=29509, buy=40, sell=20, name='frozen sapphire shard'},
    {id=29515, buy=100, sell=50, name='glacial sapphire shard'},
    {id=29528, buy=60, sell=30, name='abyssal whirlpool'},
    {id=29529, buy=60, sell=30, name='cerulean droplet'},
    {id=29521, buy=220, sell=110, name='tidal sphere'},
    {id=29539, buy=30, sell=10, name='adamantine bar'},
    {id=29540, buy=30, sell=10, name='mithril bar'},
}


local function setNewTradeTable(table)
    local items, item = {}
    for i = 1, #table do
        item = table[i]
        items[item.id] = {id = item.id, buy = item.buy, sell = item.sell, subType = 0, name = item.name}
    end
    return items
end

local function onBuy(cid, item, subType, amount, ignoreCap, inBackpacks)
    local player = Player(cid)
    local itemsTable = setNewTradeTable(shop)
    local totalCost = itemsTable[item].buy * amount
    local playerStorage = player:getStorageValue(48078)
    
    if playerStorage < totalCost then
        return player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have enough frosthold coins.")
    end

    if not ignoreCap and player:getFreeCapacity() < ItemType(itemsTable[item].id):getWeight(amount) then
        return player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have enough capacity.")
    end

    player:setStorageValue(48078, playerStorage - totalCost)
    player:addItem(itemsTable[item].id, amount)
    player:sendTextMessage(MESSAGE_INFO_DESCR,
        "Bought "..amount.."x "..itemsTable[item].name.." for "..totalCost.." frosthold coins.")
    sendReputationToPlayer(player)
    return true
end

local function onSell(cid, item, subType, amount, ignoreCap, inBackpacks)
    local player = Player(cid)
    local itemsTable = setNewTradeTable(shop)
    local totalValue = itemsTable[item].sell * amount

    player:setStorageValue(48078, math.max(0, player:getStorageValue(48078)) + totalValue)
    player:removeItem(itemsTable[item].id, amount)
    player:sendTextMessage(MESSAGE_INFO_DESCR,
        "Sold "..amount.."x "..itemsTable[item].name.." for "..totalValue.." frosthold coins.")
    sendReputationToPlayer(player)
    return true
end

local function greetCallback(cid)
    return true
end

local voices = {
    { text = 'Forsthold Reputation Coins' },
}

npcHandler:addModule(VoiceModule:new(voices))

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    local player = Player(cid)
    if not player then
        return false
    end
    if msgcontains(msg, 'trade') then
        local player = Player(cid)
        player:sendExtendedOpcode(ServerOpcodes.currencyType, "F")
        local coinAmount = player:getStorageValue(48078) or 0
        player:sendExtendedOpcode(ServerOpcodes.coinAmount, tostring(coinAmount))
        openShopWindow(cid, shop, onBuy, onSell)
    end
    return true
end

npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, we {trade} frosthold coins for some valuables.')
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
