local config = {
    [0] = { -- None
        items = {
			{2650, 1}, -- jacket
			{2649, 1}, -- leather legs
			{2461, 1}, -- leather helmet
			{2643, 1}, -- leather boots
			{2661, 1},  -- scarf
			{2544, 50},  -- 50 arrows
        },
        container = {
			{2175, 1}, -- spellbook
			{23719, 1}, -- scorcher
			{23721, 1}, -- chiller
            {2120, 1},  -- rope
			{2554, 1},  -- shovel
			{7618, 3},  -- health potion
			{2456, 1},  -- bow
			{7620, 3},  -- mana potion
			{2389, 5}, -- 5 spears
			{2512, 1}, -- dwarven shield
			{2404, 1}, -- knife
			{2380, 1}, -- hatchet
			{2550, 1}, -- scythe
			{1988, 1}, -- backpack
			{2674, 5}, -- red apple
        }
    },
}
function onLogin(player)
    if player:getLastLoginSaved() == 0 then
        local vocationId = player:getVocation():getId()

        if config[vocationId] then
            local vocationConfig = config[vocationId]

            -- Give items
            for _, item in ipairs(vocationConfig.items) do
                player:addItem(item[1], item[2])
                playSound(player, "open_chest.ogg")
            end

            -- Create a container and add items to it
            local container = player:addItem(1988, 1)
            for _, containerItem in ipairs(vocationConfig.container) do
                container:addItem(containerItem[1], containerItem[2])
            end
        end
    end
    return true
end





