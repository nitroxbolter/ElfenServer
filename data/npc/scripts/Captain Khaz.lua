local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = { {text = 'Passages to Carlin, Ab\'Dendriel, Edron, Venore, Port Hope, Liberty Bay, Yalahar, Roshamuul, Krailos, Oramond, Svargrond and Bounac.'} }
npcHandler:addModule(VoiceModule:new(voices))

local function addTravelKeyword(keyword, cost, destination, action)
    local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you seek a passage to ' .. keyword:titleCase() .. ' for ' .. cost .. ' gold?', cost = cost, discount = 'postman'})
    travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, cost = cost, discount = 'postman', destination = destination}, nil, action)
    travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end


addTravelKeyword('carlin', 290, Position(32387, 31820, 6), function(player) if player:getStorageValue(Storage.postman.Mission01) == 1 then player:setStorageValue(Storage.postman.Mission01, 2) end end)
addTravelKeyword('ab\'dendriel', 330, Position(32734, 31668, 6))
addTravelKeyword('edron', 360, Position(33175, 31764, 6))
addTravelKeyword('venore', 345, Position(32954, 32022, 6))
addTravelKeyword('port hope', 360, Position(32527, 32784, 6))
addTravelKeyword('roshamuul', 410, Position(33494, 32567, 7))
addTravelKeyword('svargrond', 280, Position(32341, 31108, 6))
addTravelKeyword('liberty bay', 280, Position(32285, 32892, 6))
addTravelKeyword('yalahar', 300, Position(32816, 31272, 6))
addTravelKeyword('oramond', 320, Position(33479, 31985, 7))
addTravelKeyword('krailos', 370, Position(33492, 31712, 6))
addTravelKeyword('bounac', 380, Position(33641, 31469, 6))
addTravelKeyword('kilmaresh', 780, Position(33714, 31188, 6))


keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, text = 'My Name is Khaz, we fall under the name of the Royal Tibia Line.'})
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}, {Bounac} or {Kilmaresh}?'})
keywordHandler:addKeyword({'route'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}, {Bounac} or {Kilmaresh}?'})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}, {Bounac} or {Kilmaresh}?'})
keywordHandler:addKeyword({'town'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}, {Bounac} or {Kilmaresh}?'})
keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}, {Bounac} or {Kilmaresh}?'})
keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}, {Bounac} or {Kilmaresh}?'})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Carlin}, {Ab\'Dendriel}, {Venore}, {Port Hope}, {Liberty Bay}, {Svargrond}, {Yalahar}, {Roshamuul}, {krailos}, {Oramond}, {Edron}, {Bounac} or {Kilmaresh}?'})

npcHandler:setMessage(MESSAGE_GREET, 'Welcome on board, |PLAYERNAME|. Where can I {sail} you today?')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye. Recommend us if you were satisfied with our service.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')

npcHandler:addModule(FocusModule:new())
