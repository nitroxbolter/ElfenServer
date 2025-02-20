function onUpdateDatabase()
	print("> Updating database to version 40 (custom skill Jewelsmith)")
	db.query("ALTER TABLE `players` ADD COLUMN `skill_jewelsmith` INT UNSIGNED NOT NULL DEFAULT 10, ADD COLUMN `skill_jewelsmith_tries` bigint UNSIGNED NOT NULL DEFAULT 0")
	return true
end