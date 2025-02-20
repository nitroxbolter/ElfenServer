local worldBoss = GlobalEvent("DreadscaleTheAncient")

print(">> World Bosses Loaded")

function worldBoss.onTime()
    if(os.date("%A") == "Monday") then 
        local bossPosition = Position(32314, 31524, 9)
        local topCreature = Tile(bossPosition):getTopCreature()
        
        if topCreature == nil or (topCreature:isMonster() and topCreature:getName() ~= "Dreadscale The Ancient") then
            Game.broadcastMessage("World Boss Dreadscale The Ancient has appeared!", MESSAGE_EVENT_ADVANCE)
            print("World Boss Dreadscale The Ancient has appeared!")
            Game.createMonster("Dreadscale The Ancient", bossPosition)
        end
        local fromPosX = Position(30620, 30361, 7)
        local toPosX = Position(34250, 33489, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(32314, 31524, 7), 22, "World Boss: Dreadscale The Ancient")
                        Game.broadcastMessage("Dreadscale The Ancient has spawned on Dreadscale Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
    end
    return true
end

worldBoss:time("20:00:00")
worldBoss:register()


local worldBoss = GlobalEvent("DrakTulTheSovereign")

function worldBoss.onTime()
    if(os.date("%A") == "Tuesday") then 
        local bossPosition = Position(32912, 31386, 10)
        local topCreature = Tile(bossPosition):getTopCreature()
        
        if topCreature == nil or (topCreature:isMonster() and topCreature:getName() ~= "Drak'thul The Void Sovereign") then
            Game.broadcastMessage("World Boss Drak'thul The Void Sovereign has merged!", MESSAGE_EVENT_ADVANCE)
            print("World Boss Drak'thul The Void Sovereign has merged!")
            Game.createMonster("Drak'thul The Void Sovereign", bossPosition)
        end
        local fromPosX = Position(30620, 30361, 7)
        local toPosX = Position(34250, 33489, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(32912, 31386, 7), 22, "World Boss: Drak'thul The Void Sovereign")
                        Game.broadcastMessage("Drak'thul The Void Sovereign has spawned on Sovereign Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
    end
    return true
end

worldBoss:time("20:00:00")
worldBoss:register()


local worldBoss = GlobalEvent("ThaladorTheStormbringer")

function worldBoss.onTime()
    if(os.date("%A") == "Wednesday") then 
        local bossPosition = Position(31985, 31984, 5)
        local topCreature = Tile(bossPosition):getTopCreature()
        
        if topCreature == nil or (topCreature:isMonster() and topCreature:getName() ~= "Thalador The Stormbringer") then
            Game.broadcastMessage("World Boss Thalador The Stormbringer has appeared!", MESSAGE_EVENT_ADVANCE)
            print("World Boss Thalador The Stormbringer has appeared!")
            Game.createMonster("Thalador The Stormbringer", bossPosition)
        end
        local fromPosX = Position(30620, 30361, 7)
        local toPosX = Position(34250, 33489, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(31985, 31984, 7), 22, "World Boss: Thalador The Stormbringer")
                        Game.broadcastMessage("Thalador The Stormbringer has spawned on Thalador Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
    end
    return true
end

worldBoss:time("20:00:00")
worldBoss:register()



local worldBoss = GlobalEvent("AquaticOverlord")

function worldBoss.onTime()
    if(os.date("%A") == "Monday") then 
        local bossPosition = Position(33239, 32096, 9)
        local topCreature = Tile(bossPosition):getTopCreature()
        
        if topCreature == nil or (topCreature:isMonster() and topCreature:getName() ~= "Aquatic Overlord Thalassa") then
            Game.broadcastMessage("World Boss Aquatic Overlord Thalassa has emerged!", MESSAGE_EVENT_ADVANCE)
            print("World Boss Aquatic Overlord Thalassa has emerged!")
            Game.createMonster("Aquatic Overlord Thalassa", bossPosition)
        end
        local fromPosX = Position(30620, 30361, 7)
        local toPosX = Position(34250, 33489, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(33239, 32096, 7), 22, "World Boss: Aquatic Overlord Thalassa")
                        Game.broadcastMessage("Aquatic Overlord Thalassa has spawned on Thalassa Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
    end
    return true
end

worldBoss:time("16:00:00")
worldBoss:register()


local worldBoss = GlobalEvent("VorondorEternalFlames")

function worldBoss.onTime()
    if(os.date("%A") == "Thursday") then 
        local bossPosition = Position(32973, 31944, 7)
        local topCreature = Tile(bossPosition):getTopCreature()
        
        if topCreature == nil or (topCreature:isMonster() and topCreature:getName() ~= "Vorondor The Eternal Flames") then
            Game.broadcastMessage("World Boss: Vorondor The Eternal Flames blazes into existence!", MESSAGE_EVENT_ADVANCE)
            print("World Boss: Vorondor The Eternal Flames blazes into existence!")
            Game.createMonster("Vorondor The Eternal Flames", bossPosition)
        end
        local fromPosX = Position(30620, 30361, 7)
        local toPosX = Position(34250, 33489, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(32973, 31944, 7), 22, "World Boss: Vorondor The Eternal Flames")
                        Game.broadcastMessage("Vorondor The Eternal Flames has spawned on Eternal Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
    end
    return true
end

worldBoss:time("20:00:00")
worldBoss:register()


local worldBoss = GlobalEvent("AzazelSeraphim")

function worldBoss.onTime()
    if(os.date("%A") == "Friday") then 
        local bossPosition = Position(33400, 31730, 6)
        local topCreature = Tile(bossPosition):getTopCreature()
        
        if topCreature == nil or (topCreature:isMonster() and topCreature:getName() ~= "Azazel The Infernal Seraph") then
            Game.broadcastMessage("World Boss: The skies darken as Azazel The Infernal Seraph descends!", MESSAGE_EVENT_ADVANCE)
            print("World Boss: The oceans darken as Azazel The Infernal Seraph descends!")
            Game.createMonster("Azazel The Infernal Seraph", bossPosition)
        end
        local fromPosX = Position(30620, 30361, 7)
        local toPosX = Position(34250, 33489, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(33400, 31730, 7), 22, "World Boss: Azazel The Infernal Seraph")
                        Game.broadcastMessage("Azazel The Infernal Seraph has spawned on Azazel Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
    end
    return true
end

worldBoss:time("20:00:00")
worldBoss:register()


local worldBoss = GlobalEvent("mortisAndDreadbone")

function spawnBoss(bossName, bossPosition)
    local topCreature = Tile(bossPosition):getTopCreature()
    if topCreature == nil or (topCreature:isMonster() and topCreature:getName() ~= bossName) then
        Game.broadcastMessage("World Boss: The realm trembles as " .. bossName .. " descend upon us!", MESSAGE_EVENT_ADVANCE)
        print("World Boss: The realm trembles as " .. bossName .. " descend upon us!")
        Game.createMonster(bossName, bossPosition)
    end
end

function worldBoss.onTime()
   if(os.date("%A") == "Saturday") then 
        local mortisPosition = Position(32964, 30960, 8)
        local dreadbonePosition = Position(32966, 30960, 8)
        
        spawnBoss("Mortis The Sovereign", mortisPosition)
        spawnBoss("Dreadbone The Eternal", dreadbonePosition)
        local fromPosX = Position(30620, 30361, 7)
        local toPosX = Position(34250, 33489, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(32964, 30960, 7), 22, "World Boss: Mortis The Sovereign & Dradbone The Eternal")
                        Game.broadcastMessage("Mortis and Dreadbone The Eternal have spawned on Horror Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
    end
    return true
end

worldBoss:time("12:00:00")
worldBoss:register()



local worldBoss = GlobalEvent("TymagronTheEarthshaker")

function worldBoss.onTime()
    if(os.date("%A") == "Saturday") then 
        local bossPosition = Position(32260, 31287, 7)
        local topCreature = Tile(bossPosition):getTopCreature()
        
        if topCreature == nil or (topCreature:isMonster() and topCreature:getName() ~= "Tymagron The Earthshaker") then
            Game.broadcastMessage("World Boss: Behold! Tymagron The Earthshaker has emerged with a thunderous roar!", MESSAGE_EVENT_ADVANCE)
            print("World Boss: Behold! Tymagron The Earthshaker has emerged with a thunderous roar!")
            Game.createMonster("Tymagron The Earthshaker", bossPosition)
        end
        local fromPosX = Position(30620, 30361, 7)
        local toPosX = Position(34250, 33489, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(32260, 31287, 7), 22, "World Boss: Tymagron The Earthshaker")
                        Game.broadcastMessage("Tymagron The Earthshaker has spawned on Earthshaker Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
    end
    return true
end

worldBoss:time("20:00:00")
worldBoss:register()



local worldBoss = GlobalEvent("GorgulTheFrienzied")

function worldBoss.onTime()
    if(os.date("%A") == "Sunday") then 
        local bossPosition = Position(32573, 31005, 9)
        local topCreature = Tile(bossPosition):getTopCreature()
        
        if topCreature == nil or (topCreature:isMonster() and topCreature:getName() ~= "Gor'gul The Frienzied") then
            Game.broadcastMessage("World Boss: Hear the thundering rage of Gor'Gul The Frenzied as he crashes into our realm, fueled by primal fury!", MESSAGE_EVENT_ADVANCE)
            print("World Boss: Bear the thundering rage of Gor'Gul The Frenzied as he crashes into our realm, fueled by primal fury!")
            Game.createMonster("Gor'gul The Frienzied", bossPosition)
        end
        local fromPosX = Position(30620, 30361, 7)
        local toPosX = Position(34250, 33489, 7)
        for x = fromPosX.x, toPosX.x do
            for y = fromPosX.y, toPosX.y do
                local checkPos = Position(x, y, fromPosX.z)
                local tile = Tile(checkPos)
            
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isPlayer() then
                        playSoundPlayer(creature, "expedition.ogg")
                        creature:addMapMark(Position(32573, 31005, 7), 22, "World Boss: Gorgul The Frienzied")
                        Game.broadcastMessage("Gorgul The Frienzied has spawned on Gor'gul Island.", MESSAGE_EVENT_ADVANCE)
                    end
                end
            end
        end
    end
    return true
end

worldBoss:time("20:00:00")
worldBoss:register()