local savingEvent = 0
function saveLoop(delay)
	saveServer()
	print("Server Saved")
	if delay > 0 then
		savingEvent = addEvent(saveLoop, delay, delay)
	end
end


function onSay(player, words, param)
	if player:getGroup():getAccess() then
		if isNumber(param) then
			stopEvent(savingEvent)
			saveLoop(tonumber(param) * 60 * 1000)
		else
			saveServer()
			print("Server Saved")
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Server is saved ...")
		end
	end
end
