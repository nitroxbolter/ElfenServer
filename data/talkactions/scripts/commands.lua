function onSay(cid, words, param)
    local player = Player(cid)

    -- Show the list of commands using popupFYI
    if words == "!commands" then
        player:popupFYI("Here are the available commands:\n" ..
                        "!autoloot add, item name - Adds an item to your autoloot list.\n" ..
                        "!autoloot remove, item name - Removes an item from your autoloot list.\n" ..
						"Use the commands: !autoloot {add, remove, show, clear}, example: !autoloot add, knight armor // !autoloot remove, knight armor. Max Entries: 10.\n" ..
                        "!summonfamiliar - Summons your familiar.\n" ..
                        "!familiarlevel - Shows your familiar's level.\n" ..
                        "!choosefamiliar - Select a familiar.\n" ..
                        "!resis - Shows your resistances.\n" ..
                        "!buyhouse - Allows you to buy a house.\n" ..
                        "!sellhouse - Allows you to sell a house.\n" ..
                        "!leavehouse - Leave your current house.\n" ..
                        "!uptime - Shows the server's uptime.\n" ..
                        "!deathlist - Shows a list of recent deaths.\n" ..
                        "!kills - Shows your total kills.\n" ..
                        "!online;/online - Shows the current online players.\n" ..
                        "!serverinfo - Displays the server information.\n" ..
                        "!ancestral - Displays information about the ancestral system.")
        return true
    end

    return false
end