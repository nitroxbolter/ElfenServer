function onUpdateDatabase()
	print("> Updating database to version 30 (custom skill crafting)")
	db.query("ALTER TABLE `players` ADD COLUMN `skill_crafting` INT UNSIGNED NOT NULL DEFAULT 10, ADD COLUMN `skill_crafting_tries` bigint UNSIGNED NOT NULL DEFAULT 0")
	return true
end
