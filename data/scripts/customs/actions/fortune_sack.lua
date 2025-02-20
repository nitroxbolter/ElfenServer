local rewards = {
    { id = 2148, name = "Gold Coins" },
    { id = 2152, name = "Platinum Coins" },
    { id = 2160, name = "Crystal Coins"},
}


local fortuneSack = Action ()

function fortuneSack.onUse(player, item, fromPosition, target, toPosition, isHotkey)
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
		local countRandom = math.random(1, 5)
        player:addItem(rewardItem.id, countRandom)
        item:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You obtained x' ..countRandom..' ' .. rewardItem.name .. '.')
        playSoundPlayer(player, "coin.ogg")
        return true
end

fortuneSack:id(27894)
fortuneSack:register()