function onUpdateDatabase()
	print("> Updating database to version 34 (custom skill Herbalist)")
	db.query("ALTER TABLE `players` ADD COLUMN `skill_herbalist` INT UNSIGNED NOT NULL DEFAULT 10, ADD COLUMN `skill_herbalist_tries` bigint UNSIGNED NOT NULL DEFAULT 0")
	return true
end
