---- SCRIPT NOT USED BECAUSE: Reputation system is updated each time a player complete an expedition instead of each 1s. I create the script if anyone wanted to use it, but i dont recomend, instead 
--- just use a simple sendReputationPlayer to update the reputation.


-- local reputationUpdate = GlobalEvent("ReputationUpdate")

-- function reputationUpdate.onThink(interval)
--     local players = Game.getPlayers()
    
--     if #players == 0 then
--         return true
--     end
    
--     for _, player in ipairs(players) do
--         local success, err = pcall(sendReputationToPlayer, player)
--         if not success then
--             print("[Error - ReputationUpdate] Failed to update reputation for player: " .. player:getName() .. " - " .. err)
--         end
--     end
    
--     return true
-- end


-- reputationUpdate:interval(1000)
-- reputationUpdate:register()
