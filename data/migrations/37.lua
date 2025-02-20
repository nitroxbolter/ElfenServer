function onUpdateDatabase()
	print("> Updating database to version 37, shaders save")
	db.query("ALTER TABLE `players` ADD `shader_id` int(11) NOT NULL DEFAULT 0;")
	return true
end