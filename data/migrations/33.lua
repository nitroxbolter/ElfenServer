function onUpdateDatabase()
	print("> Updating database to version 33 (custom skills)")
	db.query("ALTER TABLE `players` ADD COLUMN `skill_mining` INT UNSIGNED NOT NULL DEFAULT 10, ADD COLUMN `skill_mining_tries` bigint UNSIGNED NOT NULL DEFAULT 0")
	return true
end
