extends Node

const MAX_LEVEL: int = 5
const LEVEL_THRESHOLDS: Array[int] = [
	500, # level 01 to 02
	900, # level 02 to 03
	2500, # level 03 to 04
	6300, # level 04 to 05
]

var completed_levels = {
	"Level1": true,
	"Level2": false,
	"Level3": false,
	"Level4": false,
	"Level5": false,
}

func unlock(level_name: String):
	if level_name in completed_levels:
		completed_levels[level_name] = true

func save_level_data() -> void: # to store lvl complete info in local file
	var file = FileAccess.open("user://savegame.json", FileAccess.WRITE)
	file.store_string(JSON.stringify(completed_levels))
	file.close()

func load_level_data() -> void:
	var file = FileAccess.open("user://savegame.json", FileAccess.READ)
	var content = file.get_as_text()
	completed_levels = JSON.parse_string(content)
	file.close()

func reset_level_data() -> void:
	save_level_data()
