local bosses = {
    ["aquatic overlord thalassa"] = {storage = 110000},
    ["azazel the infernal seraph"] = {storage = 110001},
    ["drak'thul the void sovereign"] = {storage = 110002},
    ["dreadbone the eternal"] = {storage = 110003},
    ["dreadscale the ancient"] = {storage = 110004},
    ["gor'gul the frienzied"] = {storage = 110005},
    ["mortis the sovereign"] = {storage = 110006},
    ["thalador the stormbringer"] = {storage = 110007},
    ["tymagron the earthshaker"] = {storage = 110008},
    ["vorondor the eternal flames"] = {storage = 110009},
}

print(">> Achievement System Loaded")

local function getPartyMembers(creature)
    local partyMembers = {}
    local party = creature:getParty()
    if party then
        for _, member in ipairs(party:getMembers()) do
            table.insert(partyMembers, member)
        end
    end
    return partyMembers
end

local bossesSoulWar = CreatureEvent("achievementsBossesKill")

function bossesSoulWar.onKill(creature, target)
    if not target or not target:isMonster() then
        return true
    end
    local targetMonster = target:getMonster()
    if not targetMonster or targetMonster:getMaster() then
        return true
    end
    local bossConfig = bosses[targetMonster:getName():lower()]
    if not bossConfig then
        return true
    end
    local partyMembers = getPartyMembers(creature)
    for key, value in pairs(targetMonster:getDamageMap()) do
        local attackerPlayer = Player(key)
        if attackerPlayer then
            if bossConfig.storage then
                attackerPlayer:setStorageValue(bossConfig.storage, 1)
            end
            if #partyMembers > 1 then
                -- Grant the storage to party members if the party size is greater than 1
                for _, member in ipairs(partyMembers) do
                    if member:getId() ~= attackerPlayer:getId() then
                        member:setStorageValue(bossConfig.storage, 1)
                    end
                end
            end
        end
    end
    return true
end

bossesSoulWar:register()

local loginSoulBosses = CreatureEvent("achievementsBossesDeath")

function loginSoulBosses.onLogin(player)
    player:registerEvent("achievementsBossesKill")
    return true
end

loginSoulBosses:register()
