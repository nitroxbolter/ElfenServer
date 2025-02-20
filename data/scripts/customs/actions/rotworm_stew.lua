local rotworm_stew = Action()
local COOLDOWN_STORAGE = 201286
local COOLDOWN_DURATION = 10 * 60
function rotworm_stew.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
    local player = creature:getPlayer()
    if not player then
        return false
    end
    local currentTime = os.time()
    local lastUsedTime = player:getStorageValue(COOLDOWN_STORAGE)
    if lastUsedTime > 0 and currentTime - lastUsedTime < COOLDOWN_DURATION then
        local remainingTime = COOLDOWN_DURATION - (currentTime - lastUsedTime)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to wait " .. math.ceil(remainingTime / 60) .. " minutes before using this item again.")
        return true
    end
    local currentHealth = player:getHealth()
    local maxHealth = player:getMaxHealth()
    if currentHealth < maxHealth then
        player:setHealth(maxHealth)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You feel fully healed after consuming the Rotworm Stew!")
        item:remove(1)
        player:setStorageValue(COOLDOWN_STORAGE, currentTime)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't need to heal right now.")
    end
    return true
end
rotworm_stew:id(9992)
rotworm_stew:register()