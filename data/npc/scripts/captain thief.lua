local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = { {text = 'Passages to Carlin, Ab\'Dendriel, Edron, Venore, Port Hope, Liberty Bay, Yalahar, Roshamuul, Krailos, Oramond, Svargrond and Bounac.'} }
npcHandler:addModule(VoiceModule:new(voices))
 
-- Travel
local function addTravelKeyword(keyword, cost, destination, action)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you seek a passage to ' .. keyword:titleCase() .. ' for ' .. cost .. ' gold?', cost = cost, discount = 'postman'})
		travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, cost = cost, discount = 'postman', destination = destination}, nil, action)
		travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end

addTravelKeyword('carlin', 110, Position(32387, 31820, 6), function(player) if player:getStorageValue(Storage.postman.Mission01) == 1 then player:setStorageValue(Storage.postman.Mission01, 2) end end)
addTravelKeyword('ab\'dendriel', 130, Position(32734, 31668, 6))
addTravelKeyword('edron', 160, Position(33175, 31764, 6))
addTravelKeyword('venore', 170, Position(32954, 32022, 6))
addTravelKeyword('port hope', 160, Position(32527, 32784, 6))
addTravelKeyword('roshamuul', 210, Position(33494, 32567, 7))
addTravelKeyword('svargrond', 180, Position(32341, 31108, 6))
addTravelKeyword('liberty bay', 180, Position(32285, 32892, 6))
addTravelKeyword('yalahar', 200, Position(32816, 31272, 6))
addTravelKeyword('oramond', 180, Position(33479, 31985, 7))
addTravelKeyword('krailos', 270, Position(33492, 31712, 6))


-- Basic
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}?'})
keywordHandler:addKeyword({'route'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}?'})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}?'})
keywordHandler:addKeyword({'town'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}?'})
keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}?'})
keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}?'})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}?'})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, text = 'I\'m not sailing there. This route is afflicted by a ghostship! However I\'ve heard that Captain Fearless from Venore sails there.'})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, text = 'I\'m not sailing there. This route is afflicted by a ghostship! However I\'ve heard that Captain Fearless from Venore sails there.'})
keywordHandler:addKeyword({'ghost'}, StdModule.say, {npcHandler = npcHandler, text = 'Many people who sailed to Darashia never returned because they were attacked by a ghostship! I\'ll never sail there!'})
keywordHandler:addKeyword({'bounac'}, StdModule.say, {npcHandler = npcHandler, text = 'This is Bounac. Where do you want to go?'})

npcHandler:setMessage(MESSAGE_GREET, 'Welcome on board, |PLAYERNAME|. Where can I {sail} you today?')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye. Recommend us if you were satisfied with our service.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')

npcHandler:addModule(FocusModule:new())
