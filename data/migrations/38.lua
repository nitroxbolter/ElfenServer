function onUpdateDatabase()
	print("> Updating database to version 38 (custom skill Armorsmith)")
	db.query("ALTER TABLE `players` ADD COLUMN `skill_armorsmith` INT UNSIGNED NOT NULL DEFAULT 10, ADD COLUMN `skill_armorsmith_tries` bigint UNSIGNED NOT NULL DEFAULT 0")
	return true
end