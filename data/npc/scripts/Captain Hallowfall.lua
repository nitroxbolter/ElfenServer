local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = { {text = 'Passage to Vyrsk, Vardenfell, Frosthold and Dorn.'} }
npcHandler:addModule(VoiceModule:new(voices))

local function addTravelKeyword(keyword, cost, destination, action)
    local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you seek a passage to ' .. keyword:titleCase() .. ' for ' .. cost .. ' gold?', cost = cost, discount = 'postman'})
    travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, cost = cost, discount = 'postman', destination = destination}, nil, action)
    travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end


addTravelKeyword('vyrsk', 350, Position(31176, 31314, 6))
addTravelKeyword('vardenfell', 350, Position(31559, 31347, 7))
addTravelKeyword('frosthold', 350, Position(30800, 31180, 6))
addTravelKeyword('dorn', 350, Position(30880, 30950, 6))



keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Vyrsk}, {Vardenfell}, {Frosthold} or {Dorn}?'})

npcHandler:setMessage(MESSAGE_GREET, 'Welcome on board, |PLAYERNAME|. Make expeditions on {Vyrsk}, {Vardenfell}, {Frosthold} and {Dorn}, make your choice!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye. Take care!.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')

npcHandler:addModule(FocusModule:new())
