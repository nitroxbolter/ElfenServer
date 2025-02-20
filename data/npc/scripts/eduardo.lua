local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onThink()                     npcHandler:onThink()                     end
function onCreatureAppear(cid)         npcHandler:onCreatureAppear(cid)	        end
function onCreatureDisappear(cid)      npcHandler:onCreatureDisappear(cid)	    end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg)	end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

if isNpc(target) == true then
    return doCreatureSay(cid, "hi", 10)
end


function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
	return true
end
function onGreet(cid) 
   if getPlayerStorageValue(cid, 49001) == 0 then
   	doSendDialogNpc(cid, getNpcCid(), "Está na hora de prosseguir com seu treinamento, avance e derrote os Porky.", "Close")  	
  else
  doSendDialogNpc(cid, getNpcCid(), "Ora ora, ja chegou ate aqui "..getCreatureName(cid).."? Esta na hora de começarmos o seu treinamento de verdade, os Porky ao norte são animais cativos de Air Nation que nos fornecem comida, e um otimo meio de treinamento.", "Close&Porky")
  end
  return true
end


function creatureSayCallback(cid, type, msg)
  if not npcHandler:isFocused(cid) then
    return false
  end
  
local player = Player(cid)

  if msgcontains(msg:lower(), "porky") then
      doSendDialogNpc(cid, getNpcCid(), "Devido sua ferocidade, e seus ataques em bando, uma otima estrategia é tentar juntar o minimo possivel de Porky, mas vamos começar pelas suas dobras iniciais.", "Close&Bend")  		
  elseif msgcontains(msg:lower(), "bend") then	
      
   if getPlayerStorageValue(cid, 49001) == 1 then
   	doSendDialogNpc(cid, getNpcCid(), "A sua primeira dobra é o ataque basico, que é fortalecido através de suas luvas de dobrador, movimentando suas mãos como as antigas Dragon Turtles nos ensinaram, você pode controlar o fogo e utiliza-lo para atingir seu alvo, quando estiver pronto para aprender me diga, mas caso haja duvidas, pergunte-me novamente..", "Close&Learn Basic")  	
     elseif getPlayerStorageValue(cid, 49001) == 2 then
    	doSendDialogNpc(cid, getNpcCid(), "Sua proxima dobra chamada Air Ball é o movimento que seu corpo faz ao controlar o fogo ao seu redor com suas luvas, e acertando diretamento um alvo... alguns dobradores experientes conseguem até mesmo efeitos adicionais com este tipo de dobra.", "Close&Learn Ball")  	
     elseif getPlayerStorageValue(cid, 49001) == 3 then
    	doSendDialogNpc(cid, getNpcCid(), "Agora a parte mais importante... bem... na minha opnião. Air Recover é como você usará o fogo para regenerar suas feridas em batalha, então não se esqueça dela !.", "Close&Learn Recover")  	
  end
  elseif msgcontains(msg:lower(), "learn basic") then	
  		doSendDialogNpcClose(cid)
			npcHandler:unGreet(cid)	
	    player:learnSpell("basic attack")
			doSendMagicEffect(getCreaturePosition(cid), 19)
    	setPlayerStorageValue(cid, 49001, 2)
  elseif msgcontains(msg:lower(), "learn ball") then	
  		doSendDialogNpcClose(cid)
			npcHandler:unGreet(cid)	
	    player:learnSpell("air ball")
			doSendMagicEffect(getCreaturePosition(cid), 19)
    	setPlayerStorageValue(cid, 49001, 3)
  elseif msgcontains(msg:lower(), "learn recover") then	
  		doSendDialogNpcClose(cid)
			npcHandler:unGreet(cid)	
	    player:learnSpell("air recover")
			doSendMagicEffect(getCreaturePosition(cid), 19)
    	setPlayerStorageValue(cid, 49001, 4)
  elseif msgcontains(msg:lower(), "fechar") then
	doSendDialogNpcClose(cid)
	npcHandler:unGreet(cid)	
  end
end

npcHandler:setCallback(CALLBACK_GREET, onGreet)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

-- nome, preco, id, '' vazio

