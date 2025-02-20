math.randomseed(os.time())
dofile('data/lib/lib.lua')

ServerOpcodes = {
	currencyType = 125,
	coinAmount = 126
}

--- function playerSendMail created by Alexv45 in order to send Parcel's to Inbox Player's, could be used in similar way as mail system in tibia or like a boss reward (needs to be right scripted)
--- Example to use: 
--- Loot table on the script , example on a script onDeath if demon death then, add a list of items, and call the function playerSendMail (try remove the loot of the boss if you do it)
--- local itemList = {
----			{item = 2160, chance = 10000, maxCount = 1},
----			{item = 2152, chance = 50000, maxCount = 2},
----			{item = 2148, chance = 75000, maxCount = 10}
----		}	
---- Then Call the function when getting the loot:	
--- 	playerSendMail(player:getId(), "Loot Reward:", nil, itemList, 2)
--- 
--- 
--- 
--- 
--- EXAMPLE ONDEATH BOSS: 
--- function DeathEvent.onDeath(creature, corpse, killer, mostDamageKiller)
---    if creature:getName():lower() == "arbaziloth master" then
---       local players = creature:getDamageMap()
---
---        local itemList = {
---            {item = 28082, chance = 10000, maxCount = 1},
---            {item = 8877, chance = 50000, maxCount = 2},
---            {item = 7455, chance = 75000, maxCount = 1},
---            {item = 8901, chance = 75000, maxCount = 1},
---            {item = 18401, chance = 75000, maxCount = 1},
---            {item = 18411, chance = 75000, maxCount = 1},
---            {item = 6553, chance = 75000, maxCount = 1},
---            {item = 27688, chance = 75000, maxCount = 1},
---            {item = 26812, chance = 75000, maxCount = 1},
---            {item = 2160, chance = 75000, maxCount = 100},
---            {item = 28872, chance = 75000, maxCount = 45},
---        }
        
---        for playerId, damage in pairs(players) do
---            local player = Player(playerId)
---            if player then
---                playerSendMail(player:getId(), "Arbaziloth Master Loot", "Congratulations on your victory over Ferumbras!", itemList, 2)
---            end
---        end
---    end
---    return true
---end
function playerSendMail(playerId, subject, message, itemList, parcelType)
    local player = Player(playerId)
    if not player then
        print("Error: Player not found.")
        return false
    end
    local parcelOptions = { [1] = 2595, [2] = 1988 }
    local parcelId = parcelOptions[parcelType] or 2595
    local parcel = Game.createItem(parcelId)
    if not parcel then
        print("Error: Failed to create parcel.")
        return false
    end
    local receivedItemsMessage = subject .. ": You received "
    local firstItem = true
    for _, itemData in ipairs(itemList) do
        if math.random(1, 100000) <= itemData.chance then
            local itemCount = math.random(1, itemData.maxCount)
            local item = ItemType(itemData.item)
            if item then
                -- Add item to parcel and update the message
                if parcel:addItem(itemData.item, itemCount) then
                    local itemName = item:getName()
                    if not firstItem then
                        receivedItemsMessage = receivedItemsMessage .. ", "
                    end
                    receivedItemsMessage = receivedItemsMessage .. itemCount .. " " .. itemName
                    firstItem = false
                else
                    print("Error: Failed to add item ID " .. itemData.item .. " to parcel.")
                end
            else
                print("Error: Invalid item type for ID " .. itemData.item)
            end
        end
    end
    if firstItem then
        receivedItemsMessage = "No items were added to the parcel."
    end
    local inbox = player:getInbox()
    if inbox and inbox:addItemEx(parcel, INDEX_WHEREEVER, FLAG_NOLIMIT) == RETURNVALUE_NOERROR then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, receivedItemsMessage)
        return true
    else
        print("Error: Failed to add parcel to player's inbox.")
        parcel:remove()
        return false
    end
end

print(">> Reputation System Loaded")
local REPUTATION_OPCODE = 99
--- Calculate the percentage, percentage can be: 15.86 for example, but cannot be this percentage, because they won't show the ranking correctly so total of percentage should be a rounded number and not like 2323 and items or storage given to player should be rounded too, so give +20 +10 +30 +100 , try not use lower numbers.
local reputation = {
    [343585] = {name = "Vardenfell", points = "10000", coin = "Vardenfell Coins", coinStorage = 48076},
    [343586] = {name = "Dorn", points = "10000", coin = "Dorn Coins", coinStorage = 48077},
    [343587] = {name = "Frosthold", points = "10000", coin = "Frosthold Coins", coinStorage = 48078},
    [343588] = {name = "Hallowfall", points = "10000", coin = "Hallowfall Coins", coinStorage = 48079},
    [343589] = {name = "Vyrsk", points = "10000", coin = "Vyrsk Coins", coinStorage = 48080},
}
local rankThresholds = {
    {name = "Unfriendly", min = 0, max = 15.99},
    {name = "Neutral", min = 16, max = 30.99},
    {name = "Friendly", min = 31, max = 45.99},
    {name = "Honored", min = 46, max = 60.99},
    {name = "Revered", min = 61, max = 75.99},
    {name = "Exalted", min = 76, max = 100.99},
    {name = "Majestic", min = 101, max = 1000}, -- Non used, so i add it in order if you do something, or reset the storage , or continue the storage, to get another ranking reputation in order to show a title so i explain: If you start with 0/2000, but for X reason, you give more than 2000, so it will be 76 max 100 (and if is 2001) will be 100 - 1000 , is a "plus" ranking. Any case if you dont understand ask me (alex)
}
function getRank(percentage)
    for i, rank in ipairs(rankThresholds) do
        if i == #rankThresholds then
            if percentage >= rank.min and percentage <= rank.max then
                return rank.name
            end
        else
            if percentage >= rank.min and percentage < rank.max then
                return rank.name
            end
        end
	end
    return "Unknown"
end
function getPlayerReputationRank(player, factionName)
    for storage, data in pairs(reputation) do
        if data.name == factionName then
            local currentReputation = player:getStorageValue(storage)
            if currentReputation == -1 then
                currentReputation = 0
            end
            
            local maxReputation = tonumber(data.points) or 1
            local percentage = (currentReputation / maxReputation) * 100
            local rank = getRank(percentage)
            
            return rank
        end
    end
    return "Unknown"
end
function sendReputationToPlayer(player)
    local playerReputation = {}
    for storage, data in pairs(reputation) do
        local currentReputation = player:getStorageValue(storage)
        if currentReputation == -1 then
            currentReputation = 0 
        end
        local coinValue = 0
        if data.coinStorage then
            coinValue = player:getStorageValue(data.coinStorage)
            if coinValue == -1 then coinValue = 0 end
        end
        local maxReputation = tonumber(data.points) or 1
        local percentage = (currentReputation / maxReputation) * 100
        local rank = getRank(percentage)
        table.insert(playerReputation, {
            name = data.name or "Unknown",
            storage = storage,
            current = currentReputation,
            max = data.points,
            rank = rank,
            coin = data.coin or "",
            coinValue = coinValue
        })
    end
    local json_data = json.encode(playerReputation)
    player:sendExtendedOpcode(REPUTATION_OPCODE, json_data)
end


local CODE = 121
print(">> Sound System Loaded")
function sendSoundToPlayer(player, soundFile)
    local json_data = json.encode({action = "play", data = soundFile})
    player:sendExtendedOpcode(CODE, json_data)
end



function playSound(creature, soundFile)
    local spectators = Game.getSpectators(creature:getPosition(), false, true, 7, 7, 7, 7)
    for _, spectator in ipairs(spectators) do
        if spectator:isPlayer() then
            sendSoundToPlayer(spectator, soundFile)
        end
    end
end

local CODE = 122

function sendSoundToPlayer(player, soundFile)
    local json_data = json.encode({action = "play", data = soundFile})
    player:sendExtendedOpcode(CODE, json_data)
end

function playSoundPlayer(player, soundFile)
    if player:isPlayer() then
        sendSoundToPlayer(player, soundFile)
    end
end


ExtendedOPCodes = {
	CODE_CHARSTATS = 106,
	CODE_INSPECT = 107,
	REPUTATION_SYSTEM = 99,
}

STORAGEVALUE_PROMOTION = 94657
STORAGE_GHOSTMODE = 94658

ropeSpots = {
	384, 418, 8278, 8592, 13189, 14435, 14436, 14857, 15635, 19518, 24621, 24622, 24623, 24624, 26019
}

keys = {
	2086, 2087, 2088, 2089, 2090, 2091, 2092, 10032
}

doors = {
	[1209] = 1211, [1210] = 1211, [1212] = 1214, [1213] = 1214, [1219] = 1220, [1221] = 1222, [1231] = 1233, [1232] = 1233, [1234] = 1236,
	[1235] = 1236, [1237] = 1238, [1239] = 1240, [1249] = 1251, [1250] = 1251, [1252] = 1254, [1253] = 1254, [1539] = 1540, [1541] = 1542,
	[3535] = 3537, [3536] = 3537, [3538] = 3539, [3544] = 3546, [3545] = 3546, [3547] = 3548, [4913] = 4915, [4914] = 4915, [4916] = 4918,
	[4917] = 4918, [5082] = 5083, [5084] = 5085, [5098] = 5100, [5099] = 5100, [5101] = 5102, [5107] = 5109, [5108] = 5109, [5110] = 5111,
	[5116] = 5118, [5117] = 5118, [5119] = 5120, [5125] = 5127, [5126] = 5127, [5128] = 5129, [5134] = 5136, [5135] = 5136, [5137] = 5139,
	[5138] = 5139, [5140] = 5142, [5141] = 5142, [5143] = 5145, [5144] = 5145, [5278] = 5280, [5279] = 5280, [5281] = 5283, [5282] = 5283,
	[5284] = 5285, [5286] = 5287, [5515] = 5516, [5517] = 5518, [5732] = 5734, [5733] = 5734, [5735] = 5737, [5736] = 5737, [6192] = 6194,
	[6193] = 6194, [6195] = 6197, [6196] = 6197, [6198] = 6199, [6200] = 6201, [6249] = 6251, [6250] = 6251, [6252] = 6254, [6253] = 6254,
	[6255] = 6256, [6257] = 6258, [6795] = 6796, [6797] = 6798, [6799] = 6800, [6801] = 6802, [6891] = 6893, [6892] = 6893, [6894] = 6895,
	[6900] = 6902, [6901] = 6902, [6903] = 6904, [7033] = 7035, [7034] = 7035, [7036] = 7037, [7042] = 7044, [7043] = 7044, [7045] = 7046,
	[7054] = 7055, [7056] = 7057, [8541] = 8543, [8542] = 8543, [8544] = 8546, [8545] = 8546, [8547] = 8548, [8549] = 8550, [9165] = 9167,
	[9166] = 9167, [9168] = 9170, [9169] = 9170, [9171] = 9172, [9173] = 9174, [9267] = 9269, [9268] = 9269, [9270] = 9272, [9271] = 9272,
	[9273] = 9274, [9275] = 9276, [10276] = 10277, [10274] = 10275, [10268] = 10270, [10269] = 10270, [10271] = 10273, [10272] = 10273, [10471] = 10472,
	[10480] = 10481, [10477] = 10479, [10478] = 10479, [10468] = 10470, [10469] = 10470, [10775] = 10777, [10776] = 10777, [12092] = 12094, [12093] = 12094,
	[12188] = 12190, [12189] = 12190, [19840] = 19842, [19841] = 19842, [19843] = 19844, [19980] = 19982, [19981] = 19982, [19983] = 19984, [20273] = 20275,
	[20274] = 20275, [20276] = 20277, [17235] = 17236, [18208] = 18209, [13022] = 13023, [10784] = 10786, [10785] = 10786, [12099] = 12101, [12100] = 12101,
	[12197] = 12199, [12198] = 12199, [19849] = 19851, [19850] = 19851, [19852] = 19853, [19989] = 19991, [19990] = 19991, [19992] = 19993, [20282] = 20284,
	[20283] = 20284, [20285] = 20286, [17237] = 17238, [13020] = 13021, [10780] = 10781, [12095] = 12096, [12195] = 12196, [19845] = 19846, [19985] = 19986,
	[20278] = 20279, [10789] = 10790, [12102] = 12103, [12204] = 12205, [19854] = 19855, [19994] = 19995, [20287] = 20288, [10782] = 10783, [12097] = 12098,
	[12193] = 12194, [19847] = 19848, [19987] = 19988, [20280] = 20281, [10791] = 10792, [12104] = 12105, [12202] = 12203, [19856] = 19857, [19996] = 19997,
	[20289] = 20290, [22814] = 22815, [22815] = 22816, [22817] = 22818, [22819] = 22820, [22823] = 22825, [22824] = 22825, [22826] = 22827, [22828] = 22829, 
	[28680] = 28684, [28684] = 28680, [28682] = 28685, [28685] = 28682
}

verticalOpenDoors = {
	1211, 1220, 1224, 1228, 1233, 1238, 1242, 1246, 1251, 1256, 1260, 1540, 3546, 3548, 3550, 3552, 4915, 5083, 5109, 5111, 5113, 5115, 5127, 5129, 5131,
	5133, 5142, 5145, 5283, 5285, 5289, 5293, 5516, 5737, 5749, 6194, 6199, 6203, 6207, 6251, 6256, 6260, 6264, 6798, 6802, 6902, 6904, 6906, 6908, 7044,
	7046, 7048, 7050, 7055, 8543, 8548, 8552, 8556, 9167, 9172, 9269, 9274, 9274, 9269, 9278, 9282, 10270, 10275, 10279, 10283, 10479, 10481, 10485, 10483,
	10786, 12101, 12199, 19851, 19853, 19991, 19993, 20284, 20286, 17238, 13021, 10790, 12103, 12205, 19855, 19995, 20288, 10792, 12105, 12203, 19857, 19997,
	20290, 22825, 22827, 22829, 22831
}

horizontalOpenDoors = {
	1214, 1222, 1226, 1230, 1236, 1240, 1244, 1248, 1254, 1258, 1262, 1542, 3537, 3539, 3541, 3543, 4918, 5085, 5100, 5102, 5104, 5106, 5118,
	5120, 5122, 5124, 5136, 5139, 5280, 5287, 5291, 5295, 5518, 5734, 5746, 6197, 6201, 6205, 6209, 6254, 6258, 6262, 6266, 6796, 6800, 6893,
	6895, 6897, 6899, 7035, 7037, 7039, 7041, 7057, 8546, 8550, 8554, 8558, 9170, 9174, 9272, 9276, 9280, 9284, 10273, 10277, 10281, 10285,
	10470, 10472, 10476, 10474, 10777, 12094, 12190, 19842, 19844, 19982, 19984, 20275, 20277, 17236, 18209, 13023, 10781, 12096, 12196,
	19846, 19986, 20279, 10783, 12098, 12194, 19848, 19988, 20281, 22816, 22818, 22820
}

openSpecialDoors = {
	1224, 1226, 1228, 1230, 1242, 1244, 1246, 1248, 1256, 1258, 1260, 1262, 3541, 3543, 3550, 3552, 5104, 5106, 5113, 5115, 5122, 5124, 5131, 5133,
	5289, 5291, 5293, 5295, 6203, 6205, 6207, 6209, 6260, 6262, 6264, 6266, 6897, 6899, 6906, 6908, 7039, 7041, 7048, 7050, 8552, 8554, 8556, 8558,
	9176, 9178, 9180, 9182, 9278, 9280, 9282, 9284, 10279, 10281, 10283, 10285, 10474, 10476, 10483, 10485, 10781, 12096, 12196, 19846, 19986, 20279,
	10783, 12098, 12194, 19848, 19988, 20281, 10790, 12103, 12205, 19855, 19995, 20288, 10792, 12105, 12203, 19857, 19997, 20290
}

questDoors = {
	1223, 1225, 1241, 1243, 1255, 1257, 3542, 3551, 5105, 5114, 5123, 5132, 5288, 5290, 5745, 5748, 6202, 6204, 6259, 6261, 6898, 6907, 7040, 7049,
	8551, 8553, 9175,9177, 9277, 9279, 10278, 10280, 10475, 10484, 10782, 12097, 19847, 19987, 20280, 10791, 12104, 12204, 12195, 19856, 19996, 20289,
	22821, 22830
}

levelDoors = {
	1227, 1229, 1245, 1247, 1259, 1261, 3540, 3549, 5103, 5112, 5121, 5130, 5292, 5294, 6206, 6208, 6263, 6265, 6896, 6905, 7038, 7047, 8555, 8557,9179, 9181,
	9281, 9283, 10282, 10284, 10473, 10482, 10780, 10789, 10780, 12095, 12195, 19845, 19985, 20278, 10789, 12102, 12193, 12202, 19854, 19994, 20287
}

openDoors = {
	1211, 1214, 1233, 1236, 1251, 1254, 3546, 3537, 4915, 4918, 5100, 5109, 5118, 5127, 5136, 5139, 5142,
	5145, 5280, 5283, 5734, 5737, 6194, 6197, 6251, 6254, 6893, 6902, 7035, 7044, 8543, 8546, 9167, 9170,
	9269, 9272, 10270, 10273, 10470, 10479, 10777, 10786, 12094, 12101, 12190, 12199, 19842, 19851, 19982,
	19991, 20275, 20284, 22816, 22825, 25285, 25292
}
closedDoors = {
	1210, 1213, 1232, 1235, 1250, 1253, 3536, 3545, 4914, 4917, 5099, 5108, 5117, 5126, 5135, 5138, 5141,
	5144, 5279, 5282, 5733, 5736, 6193, 6196, 6250, 6253, 6892, 6901, 7034, 7043, 8542, 8545, 9166, 9169,
	9268, 9271, 10269, 10272, 10766, 10785, 10469, 10478, 12093, 12100, 12189, 12198, 19841, 19850, 19981,
	19990, 20274, 20283, 22815, 22824, 25284, 25291
}
lockedDoors = {
	1209, 1212, 1231, 1234, 1249, 1252, 3535, 3544, 4913, 4916, 5098, 5107, 5116, 5125, 5134, 5137, 5140,
	5143, 5278, 5281, 5732, 5735, 6192, 6195, 6249, 6252, 6891, 6900, 7033, 7042, 8541, 8544, 9165, 9168,
	9267, 9270, 10268, 10271, 10468, 10477, 10775, 10784, 12092, 12099, 12188, 12197, 19840, 19849, 19980,
	19989, 20273, 20282, 22814, 22823, 25283, 25290
}

openExtraDoors = {
	1540, 1542, 6796, 6798, 6800, 6802, 6960, 6962, 7055, 7057, 12695, 12703, 14635, 17236, 17238, 25159, 25161
}
closedExtraDoors = {
	1539, 1541, 6795, 6797, 6799, 6801, 6959, 6961, 7054, 7056, 12692, 12701, 14633, 17235, 17237, 25158, 25160
}

openHouseDoors = {
	1220, 1222, 1238, 1240, 3539, 3548, 5083, 5085, 5102, 5111, 5120, 5129, 5285, 5287, 5516, 5518, 6199,
	6201, 6256, 6258, 6895, 6904, 7037, 7046, 8548, 8550, 9172, 9174, 9274, 9276, 10275, 10277, 10472, 10481,
	13021, 13023, 18209, 19844, 19853, 19984, 19993, 20277, 20286, 22818, 22827
}
closedHouseDoors = {
	1219, 1221, 1237, 1239, 3538, 3547, 5082, 5084, 5101, 5110, 5119, 5128, 5284, 5286, 5515, 5517, 6198,
	6200, 6255, 6257, 6894, 6903, 7036, 7045, 8547, 8549, 9171, 9173, 9273, 9275, 10274, 10276, 10471, 10480,
	13020, 13022, 18208, 19843, 19852, 19983, 19992, 20276, 20285, 22817, 22826
}

--[[ (Not currently used, but probably useful to keep up to date)
openQuestDoors = {
	1224, 1226, 1242, 1244, 1256, 1258, 3543, 3552, 5106, 5115, 5124, 5133, 5289, 5291, 5746, 5749, 6203,
	6205, 6260, 6262, 6899, 6908, 7041, 7050, 8552, 8554, 9176, 9178, 9278, 9280, 10279, 10281, 10476, 10485,
	10783, 10792, 12098, 12105, 12194, 12203, 19848, 19857, 19988, 19997, 20281, 20290, 22822, 22831, 25163,
	25165, 25289, 25296
}
]]--
closedQuestDoors = {
	1223, 1225, 1241, 1243, 1255, 1257, 3542, 3551, 5105, 5114, 5123, 5132, 5288, 5290, 5745, 5748, 6202,
	6204, 6259, 6261, 6898, 6907, 7040, 7049, 8551, 8553, 9175, 9177, 9277, 9279, 10278, 10280, 10475, 10484,
	10782, 10791, 12097, 12104, 12193, 12202, 19847, 19856, 19987, 19996, 20280, 20289, 22821, 22830, 25162,
	25164, 25288, 25295
}

--[[ (Not currently used, but probably useful to keep up to date)
openLevelDoors = {
	1228, 1230, 1246, 1248, 1260, 1262, 3541, 3550, 5104, 5113, 5122, 5131, 5293, 5295, 6207, 6209, 6264,
	6266, 6897, 6906, 7039, 7048, 8556, 8558, 9180, 9182, 9282, 9284, 10283, 10285, 10474, 10483, 10781,
	10790, 12096, 12103, 12196, 12205, 19846, 19855, 19986, 19995, 20279, 20288, 22820, 22829, 25287, 25294
}
]]--
closedLevelDoors = {
	1227, 1229, 1245, 1247, 1259, 1261, 3540, 3549, 5103, 5112, 5121, 5130, 5292, 5294, 6206, 6208, 6263,
	6265, 6896, 6905, 7038, 7047, 8555, 8557, 9179, 9181, 9281, 9283, 10282, 10284, 10473, 10482, 10780,
	10789, 12095, 12102, 12195, 12204, 19845, 19854, 19985, 19994, 20278, 20287, 22819, 22828, 25286, 25293
}

weatherConfig = {
	groundEffect = 2,
	fallEffect = 56,
	thunderEffect = configManager.getBoolean(configKeys.WEATHER_THUNDER),
	minDMG = 1,
	maxDMG = 5
}

function isNumber(str)
	return tonumber(str) ~= nil
end

function doTargetCombatHealth(...) return doTargetCombat(...) end
function doAreaCombatHealth(...) return doAreaCombat(...) end
doCombatAreaHealth = doAreaCombatHealth
function doTargetCombatMana(cid, target, min, max, effect) return doTargetCombat(cid, target, COMBAT_MANADRAIN, min, max, effect) end
doCombatAreaMana = doTargetCombatMana
function doAreaCombatMana(cid, pos, area, min, max, effect) return doAreaCombat(cid, COMBAT_MANADRAIN, pos, area, min, max, effect) end

function doSummonCreature(name, pos, ...)
	local m = Game.createMonster(name, pos, ...) return m and m:getId() or false
end
doCreateMonster = doSummonCreature
function doConvinceCreature(cid, target)
	local creature = Creature(cid)
	if creature == nil then
		return false
	end

	local targetCreature = Creature(target)
	if targetCreature == nil then
		return false
	end

	creature:addSummon(targetCreature)
	return true
end

function getDistanceBetween(firstPosition, secondPosition)
	local xDif = math.abs(firstPosition.x - secondPosition.x)
	local yDif = math.abs(firstPosition.y - secondPosition.y)
	local posDif = math.max(xDif, yDif)
	if firstPosition.z ~= secondPosition.z then
		posDif = posDif + 15
	end
	return posDif
end

function getFormattedWorldTime()
	local worldTime = getWorldTime()
	local hours = math.floor(worldTime / 60)

	local minutes = worldTime % 60
	if minutes < 10 then
		minutes = '0' .. minutes
	end
	return hours .. ':' .. minutes
end

function getTibianTime()
	local worldTime = getWorldTime()
	local hours = math.floor(worldTime / 60)

	local minutes = worldTime % 60
	if minutes < 10 then
		minutes = '0' .. minutes
	end
	return hours .. ':' .. minutes
end

function getLootRandom()
	return math.random(0, MAX_LOOTCHANCE) / configManager.getNumber(configKeys.RATE_LOOT)
end

table.contains = function(array, value)
	for _, targetColumn in pairs(array) do
		if targetColumn == value then
			return true
		end
	end
	return false
end

string.split = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v
	end
	return res
end

string.splitTrimmed = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v:trim()
	end
	return res
end

string.trim = function(str)
	return str:match'^()%s*$' and '' or str:match'^%s*(.*%S)'
end

if not nextUseStaminaTime then
	nextUseStaminaTime = {}
end

function say(param)
	selfSay(text)
	doCreatureSay(param.cid, param.text, 1)
end
	
function delayedSay(text, delay)
	local delay = delay or 0
	local cid = getNpcCid()
	addEvent(say, delay, {cid = cid, text = text})
end

function getPlayerDatabaseInfo(name_or_guid)
	local sql_where = ""

	if type(name_or_guid) == 'string' then
		sql_where = "WHERE `p`.`name`=" .. db.escapeString(name_or_guid) .. ""
	elseif type(name_or_guid) == 'number' then
		sql_where = "WHERE `p`.`id`='" .. name_or_guid .. "'"
	else
		return false
	end

	local sql_query = [[
		SELECT
			`p`.`id` as `guid`,
			`p`.`name`,
			CASE WHEN `po`.`player_id` IS NULL
				THEN 0
				ELSE 1
			END AS `online`,
			`p`.`group_id`,
			`p`.`level`,
			`p`.`experience`,
			`p`.`vocation`,
			`p`.`maglevel`,
			`p`.`skill_fist`,
			`p`.`skill_club`,
			`p`.`skill_sword`,
			`p`.`skill_axe`,
			`p`.`skill_dist`,
			`p`.`skill_shielding`,
			`p`.`skill_fishing`,
			`p`.`skill_crafting`,
			`p`.`skill_mining`,
			`p`.`skill_woodcutting`,
			`p`.`skill_herbalist`,
			`p`.`skill_armorsmith`,
			`p`.`skill_weaponsmith`,
			`p`.`skill_jewelsmith`,
			`p`.`town_id`,
			`p`.`balance`,
			`gm`.`guild_id`,
			`gm`.`nick`,
			`g`.`name` AS `guild_name`,
			CASE WHEN `p`.`id` = `g`.`ownerid`
				THEN 1
				ELSE 0
			END AS `is_leader`,
			`gr`.`name` AS `rank_name`,
			`gr`.`level` AS `rank_level`,
			`h`.`id` AS `house_id`,
			`h`.`name` AS `house_name`,
			`h`.`town_id` AS `house_town`
		FROM `players` AS `p`
		LEFT JOIN `players_online` AS `po`
			ON `p`.`id` = `po`.`player_id`
		LEFT JOIN `guild_membership` AS `gm`
			ON `p`.`id` = `gm`.`player_id`
		LEFT JOIN `guilds` AS `g`
			ON `gm`.`guild_id` = `g`.`id`
		LEFT JOIN `guild_ranks` AS `gr`
			ON `gm`.`rank_id` = `gr`.`id`
		LEFT JOIN `houses` AS `h`
			ON `p`.`id` = `h`.`owner`
	]] .. sql_where

	local query = db.storeQuery(sql_query)
	if not query then
		return false
	end

	local info = {
		["guid"] = result.getNumber(query, "guid"),
		["name"] = result.getString(query, "name"),
		["online"] = result.getNumber(query, "online"),
		["group_id"] = result.getNumber(query, "group_id"),
		["level"] = result.getNumber(query, "level"),
		["experience"] = result.getNumber(query, "experience"),
		["vocation"] = result.getNumber(query, "vocation"),
		["maglevel"] = result.getNumber(query, "maglevel"),
		["skill_fist"] = result.getNumber(query, "skill_fist"),
		["skill_club"] = result.getNumber(query, "skill_club"),
		["skill_sword"] = result.getNumber(query, "skill_sword"),
		["skill_axe"] = result.getNumber(query, "skill_axe"),
		["skill_dist"] = result.getNumber(query, "skill_dist"),
		["skill_shielding"] = result.getNumber(query, "skill_shielding"),
		["skill_fishing"] = result.getNumber(query, "skill_fishing"),
		["skill_crafting"] = result.getNumber(query, "skill_crafting"),
		["skill_woodcutting"] = result.getNumber(query, "skill_woodcutting"),
		["skill_mining"] = result.getNumber(query, "skill_mining"),
		["skill_herbalist"] = result.getNumber(query, "skill_herbalist"),
		["skill_armorsmith"] = result.getNumber(query, "skill_armorsmith"),
		["skill_weaponsmith"] = result.getNumber(query, "skill_weaponsmith"),
		["skill_jewelsmith"] = result.getNumber(query, "skill_jewelsmith"),
		["town_id"] = result.getNumber(query, "town_id"),
		["balance"] = result.getNumber(query, "balance"),
		["guild_id"] = result.getNumber(query, "guild_id"),
		["nick"] = result.getString(query, "nick"),
		["guild_name"] = result.getString(query, "guild_name"),
		["is_leader"] = result.getNumber(query, "is_leader"),
		["rank_name"] = result.getString(query, "rank_name"),
		["rank_level"] = result.getNumber(query, "rank_level"),
		["house_id"] = result.getNumber(query, "house_id"),
		["house_name"] = result.getString(query, "house_name"),
		["house_town"] = result.getNumber(query, "house_town")
	}

	result.free(query)
	return info
end

function Player.getBlessings(player)
    local blessings = 0

    -- Check if the player has each blessing
    for i = 1, 5 do
        if player:hasBlessing(i) then
            blessings = blessings + 1
        end
    end

    return blessings
end


MONSTER_STORAGE = MONSTER_STORAGE or {}

function Monster.setStorageValue(self, key, value)
    local cid = self:getId()
    local storageMap = MONSTER_STORAGE[cid]
    if not storageMap then
        MONSTER_STORAGE[cid] = {[key] = value}
    else
        storageMap[key] = value
    end
end

function Monster.getStorageValue(self, key)
    local storageMap = MONSTER_STORAGE[self:getId()]
    if storageMap then
        return storageMap[key] or -1
    end
    return -1
end

function Player:doCheckBossRoom(bossName, fromPos, toPos)
	if self then
		for x = fromPos.x, toPos.x do
			for y = fromPos.y, toPos.y do
				for z = fromPos.z, toPos.z do
					local sqm = Tile(Position(x, y, z))
					if sqm then
						if sqm:getTopCreature() and sqm:getTopCreature():isPlayer() then
							self:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You must wait. Someone is challenging '..bossName..' now.')
							return false
						end
					end
				end
			end
		end
		for x = fromPos.x, toPos.x do
			for y = fromPos.y, toPos.y do
				for z = fromPos.z, toPos.z do
					local sqm = Tile(Position(x, y, z))
					if sqm and sqm:getTopCreature() then
						local monster = sqm:getTopCreature()
						if monster then
							monster:remove()
						end
					end
				end
			end
		end
	end
	return true
end

function kickPlayersAfterTime(players, fromPos, toPos, exit)
	for _, pid in pairs(players) do
		local player = Player(pid)
		if player and player:getPosition():isInRange(fromPos, toPos) then
			player:teleportTo(exit)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You were kicked by exceding time inside the boss room.')
		end
	end
end

SCARLETT_MAY_TRANSFORM = 0
SCARLETT_MAY_DIE = 0


function Container.getItemsById(self, itemId)
	local list = {}
	for index = 0, (self:getSize() - 1) do
		local item = self:getItem(index)
		if item then
			if item:isContainer() then
				local rlist = item:getItemsById(itemId)
				if type(rlist) == 'table' then
					for _, v in pairs(rlist) do
						table.insert(list, v)
					end
				end
			else
				if item:getId() == itemId then
					table.insert(list, item)
				end
			end
		end
	end
	return list
end

function table.find(t, value)
    for k, v in ipairs(t) do
        if v == value then
            return true
        end
    end
    return false
end

function Player:addStoreItem(itemId, count)
    local storeInbox = self:getStoreInbox()
    if storeInbox then
		local emptySlots = storeInbox:getEmptySlots()
		if emptySlots <= 0 then
			return false
		end
        local itemsToAdd = {}
        for i = 1, count do
            local item = Game.createItem(itemId)
            if item then
                item:setStoreItem(true)
                table.insert(itemsToAdd, item)
            else
                return false
            end
        end

        for _, item in ipairs(itemsToAdd) do
            storeInbox:addItemEx(item)
        end

        for _, item in ipairs(itemsToAdd) do
				item:setStoreItem(false)
        end

        return true
    end
    return false
end

function getBlessingsCost(level)
	if level <= 30 then
		return 2000
	elseif level >= 120 then
		return 20000
	else
		return (level - 20) * 200
	end
end

function getPvpBlessingCost(level)
	if level <= 30 then
		return 2000
	elseif level >= 270 then
		return 50000
	else
		return (level - 20) * 200
	end
end

AUTO_LOOT_MAX_ITEMS = 10
AUTOLOOT_STORAGE_START = 91342
AUTOLOOT_STORAGE_END = AUTOLOOT_STORAGE_START + AUTO_LOOT_MAX_ITEMS


function getItemAttribute(uid, key)
	local i = ItemType(Item(uid):getId())
	local string_attributes = {
	  [ITEM_ATTRIBUTE_NAME] = i:getName(),
	  [ITEM_ATTRIBUTE_ARTICLE] = i:getArticle(),
	  [ITEM_ATTRIBUTE_PLURALNAME] = i:getPluralName(),
	  ["name"] = i:getName(),
	  ["article"] = i:getArticle(),
	  ["pluralname"] = i:getPluralName()
	}
 
	local numeric_attributes = {
	  [ITEM_ATTRIBUTE_WEIGHT] = i:getWeight(),
	  [ITEM_ATTRIBUTE_ATTACK] = i:getAttack(),
	  [ITEM_ATTRIBUTE_DEFENSE] = i:getDefense(),
	  [ITEM_ATTRIBUTE_EXTRADEFENSE] = i:getExtraDefense(),
	  [ITEM_ATTRIBUTE_ARMOR] = i:getArmor(),
	  [ITEM_ATTRIBUTE_HITCHANCE] = i:getHitChance(),
	  ["weight"] = i:getWeight(),
	  ["attack"] = i:getAttack(),
	  ["defense"] = i:getDefense(),
	  ["extradefense"] = i:getExtraDefense(),
	  ["armor"] = i:getArmor(),
	  ["hitchance"] = i:getHitChance(),
	}
	
	local attr = Item(uid):getAttribute(key)
	if tonumber(attr) then
	  if numeric_attributes[key] then
		return attr ~= 0 and attr or numeric_attributes[key]
	  end
	else
	  if string_attributes[key] then
		if attr == "" then
		  return string_attributes[key]
		end
	  end
	end
 return attr
 end
 function doItemSetAttribute(uid, key, value)
	return Item(uid):setAttribute(key, value)
 end
 
 function doItemEraseAttribute(uid, key)
	return Item(uid):removeAttribute(key)
 end