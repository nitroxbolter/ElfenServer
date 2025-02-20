function onUpdateDatabase()
	print("> Updating database to version 39 (custom skill Weaponsmith)")
	db.query("ALTER TABLE `players` ADD COLUMN `skill_weaponsmith` INT UNSIGNED NOT NULL DEFAULT 10, ADD COLUMN `skill_weaponsmith_tries` bigint UNSIGNED NOT NULL DEFAULT 0")
	return true
end