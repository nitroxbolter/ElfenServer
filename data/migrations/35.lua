function onUpdateDatabase()
	print("> Updating database to version 35, wings save.")
	db.query("ALTER TABLE `players` ADD `wings_id` int(11) NOT NULL DEFAULT 0;")
	return true
end
