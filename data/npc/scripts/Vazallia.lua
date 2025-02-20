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
    {id=29539, buy=30, sell=10, name='adamantine bar'},
    {id=29540, buy=30, sell=10, name='mithril bar'},
    {id=29508, buy=40, sell=20, name='scorched citrine shard'},
    {id=29526, buy=60, sell=30, name='flaming core'},
    {id=29527, buy=60, sell=30, name='scorched sphere'},
    {id=29502, buy=85, sell=40, name='infernal elixir'},
    {id=29514, buy=100, sell=50, name='inferno citrine shard'},
    {id=29520, buy=170, sell=85, name='blazing ember orb'},
    {id=29580, buy=220, sell=110, name='arcane essence orb'},
    {id=29599, buy=220, sell=110, name='tidal essence orb'},
    {id=29600, buy=220, sell=110, name='verdant core orb'},
    {id=29601, buy=220, sell=110, name='infernal ember orb'},
    {id=29602, buy=220, sell=110, name='radiant soul orb'},
    {id=29603, buy=220, sell=110, name='eclipsed essence orb'},
    {id=29604, buy=220, sell=110, name='gravebound orb'},
    {id=29605, buy=220, sell=110, name='frostheart orb'},
    {id=29606, buy=220, sell=110, name='tenebral core orb'},
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
    local playerStorage = player:getStorageValue(48077)
    
    if playerStorage < totalCost then
        return player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have enough dorn coins.")
    end

    if not ignoreCap and player:getFreeCapacity() < ItemType(itemsTable[item].id):getWeight(amount) then
        return player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have enough capacity.")
    end

    player:setStorageValue(48077, playerStorage - totalCost)
    player:addItem(itemsTable[item].id, amount)
    player:sendTextMessage(MESSAGE_INFO_DESCR,
        "Bought "..amount.."x "..itemsTable[item].name.." for "..totalCost.." dorn coins.")
    sendReputationToPlayer(player)
    return true
end

local function onSell(cid, item, subType, amount, ignoreCap, inBackpacks)
    local player = Player(cid)
    local itemsTable = setNewTradeTable(shop)
    local totalValue = itemsTable[item].sell * amount

    player:setStorageValue(48077, math.max(0, player:getStorageValue(48077)) + totalValue)
    player:removeItem(itemsTable[item].id, amount)
    player:sendTextMessage(MESSAGE_INFO_DESCR,
        "Sold "..amount.."x "..itemsTable[item].name.." for "..totalValue.." dorn coins.")
    sendReputationToPlayer(player)
    return true
end

local function greetCallback(cid)
    return true
end

local voices = {
    { text = 'Dorn Reputation Coins' },
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
        player:sendExtendedOpcode(ServerOpcodes.currencyType, "D")
        local coinAmount = player:getStorageValue(48077) or 0
        player:sendExtendedOpcode(ServerOpcodes.coinAmount, tostring(coinAmount))
        openShopWindow(cid, shop, onBuy, onSell)
    end
    return true
end

npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, we {trade} Dorn coins for some valuables.')
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
