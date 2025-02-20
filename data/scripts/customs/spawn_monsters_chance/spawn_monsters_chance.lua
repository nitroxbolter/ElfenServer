local giantSpawn = CreatureEvent("giantSpiderTheOldWidow")

function giantSpawn.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 5

    
    if player and target:isMonster() then
        if target:getName():lower() == 'giant spider' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("The Old Widow", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("The Old Widow has appearead near the dead Giant Spider!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

giantSpawn:register()


local frazzlemaw = CreatureEvent("frazzleMawGuzzleMaw")

function frazzlemaw.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 8

    
    if player and target:isMonster() then
        if target:getName():lower() == 'frazzlemaw' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("Guzzlemaw", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("A Guzzlemaw has appeared!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

frazzlemaw:register()

local rotwormQueen = CreatureEvent("rootwormQueen")

function rotwormQueen.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 15

    
    if player and target:isMonster() then
        if target:getName():lower() == 'rotworm' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("rotworm queen", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("A Rotworm Queen has appeared!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

rotwormQueen:register()


local dragonLord = CreatureEvent("dragonToDragonLord")

function dragonLord.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 8

    
    if player and target:isMonster() then
        if target:getName():lower() == 'dragon' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("dragon lord", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("A dragon lord has surged!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

dragonLord:register()


local magmaCrawler = CreatureEvent("magmaCrawlerWeeper")

function magmaCrawler.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 5
    
    if player and target:isMonster() then
        if target:getName():lower() == 'magma crawler' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("weeper", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("A Weeper has returned to life!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

magmaCrawler:register()


local serpentSpawn = CreatureEvent("serpentSpawnMedusa")

function serpentSpawn.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 5
    
    if player and target:isMonster() then
        if target:getName():lower() == 'serpent spawn' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("medusa", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("A medusa has appeared from the venom world!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

serpentSpawn:register()

local midnightAsura = CreatureEvent("midnightAsuraDawnfireAsura")

function midnightAsura.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 5
    
    if player and target:isMonster() then
        if target:getName():lower() == 'midnight asura' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("dawnfire asura", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("Dawnfire asura has return!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

midnightAsura:register()


local plaguesmith = CreatureEvent("hellspawnToPlaguesmith")

function plaguesmith.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 4
    
    if player and target:isMonster() then
        if target:getName():lower() == 'hellspawn' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("plaguesmith", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("Plaguesmith is enraged!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

plaguesmith:register()

local cyclops = CreatureEvent("cyclopsSmith")

function cyclops.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 15
    
    if player and target:isMonster() then
        if target:getName():lower() == 'cyclops' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("cyclops smith", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("The Hammer of Smith will destroy everything!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

cyclops:register()


local warlock = CreatureEvent("warlockToInfernalist")

function warlock.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 5
    
    if player and target:isMonster() then
        if target:getName():lower() == 'warlock' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("infernalist", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("Dantes Inferno!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

warlock:register()


local seaSerpent = CreatureEvent("seaSerpentToSeacrest")

function seaSerpent.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 5
    
    if player and target:isMonster() then
        if target:getName():lower() == 'sea serpent' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("seacrest serpent", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("A Seacrest Serpent has merged!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

seaSerpent:register()


local vexClaw = CreatureEvent("demonOutCastToVexclaw")

function vexClaw.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 4
    
    if player and target:isMonster() then
        if target:getName():lower() == 'demon outcast' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("vexclaw", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("Fire Fire Fire!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

vexClaw:register()


local sightOfSurrender = CreatureEvent("sightToHoradron")

function sightOfSurrender.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 3
    
    if player and target:isMonster() then
        if target:getName():lower() == 'sight of surrender' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("horadron", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("I Will crush you!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

sightOfSurrender:register()


local glothAnemone = CreatureEvent("glothAnemoneToRustheap")

function glothAnemone.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 5
    
    if player and target:isMonster() then
        if target:getName():lower() == 'glooth anemone' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("rustheap golem", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("Sparks and energy, i can electrify everything!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

glothAnemone:register()


local workerGolem = CreatureEvent("workerToWarGolem")

function workerGolem.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 4
    
    if player and target:isMonster() then
        if target:getName():lower() == 'worker golem' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("war golem", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("Destruction and power!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

workerGolem:register()

local warWolf = CreatureEvent("warWolf")

function warWolf.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 15
    
    if player and target:isMonster() then
        if target:getName():lower() == 'wolf' and math.random(100) <= chance then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("war wolf", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("Do not touch my pawns!", TALKTYPE_MONSTER_SAY)
                playSound(player, "monster_summoned.ogg")
            end
        end
    end

    return true
end

warWolf:register()

---- Register Login Events 


local loginSpawnChance = CreatureEvent("LoginEvents")

function loginSpawnChance.onLogin(player)
	player:registerEvent("giantSpiderTheOldWidow")
	player:registerEvent("frazzleMawGuzzleMaw")
	player:registerEvent("rootwormQueen")
	player:registerEvent("dragonToDragonLord")
	player:registerEvent("serpentSpawnMedusa")
	player:registerEvent("magmaCrawlerWeeper")
	player:registerEvent("midnightAsuraDawnfireAsura")
	player:registerEvent("hellspawnToPlaguesmith")
	player:registerEvent("cyclopsSmith")
	player:registerEvent("warlockToInfernalist")
    player:registerEvent("seaSerpentToSeacrest")
    player:registerEvent("demonOutCastToVexclaw")
    player:registerEvent("sightToHoradron")
    player:registerEvent("glothAnemoneToRustheap")
    player:registerEvent("workerToWarGolem")
    player:registerEvent("warWolf")
	return true
end

loginSpawnChance:register()