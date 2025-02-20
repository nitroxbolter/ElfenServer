function onUpdateDatabase()
	print("> Updating database to version 36, aura save.")
	db.query("ALTER TABLE `players` ADD `aura_id` int(11) NOT NULL DEFAULT 0;")
	return true
end