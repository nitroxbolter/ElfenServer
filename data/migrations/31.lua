function onUpdateDatabase()
	print("> Updating database to version 31 (custom skills)")
	db.query("ALTER TABLE `players` ADD COLUMN `skill_woodcutting` INT UNSIGNED NOT NULL DEFAULT 10, ADD COLUMN `skill_woodcutting_tries` bigint UNSIGNED NOT NULL DEFAULT 0")
	return true
end
