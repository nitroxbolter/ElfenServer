function Monster:onDropLoot(corpse)
	if hasEventCallback(EVENT_CALLBACK_ONDROPLOOT) then
		EventCallback(EVENT_CALLBACK_ONDROPLOOT, self, corpse)
	end
end

function Monster:onSpawn(position, startup, artificial)
	self:registerEvent("onDeath_randomTierDrops")
	self:registerEvent("onDeath_Bakragore")
	if hasEventCallback(EVENT_CALLBACK_ONSPAWN) then
		return EventCallback(EVENT_CALLBACK_ONSPAWN, self, position, startup, artificial)
	else
		return true
	end
end
