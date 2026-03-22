extends Control

func _ready() -> void:
	var all_buttons = $Buttons.find_children("*", "TextureButton", true)
	for button in all_buttons:
		if button.name != "Back":
			var is_unlocked = LevelData.completed_levels.get(button.name, false)
			button.disabled = !is_unlocked

func load_level(path: String):
	var game_scene = load("res://scenes/main/game_scene.tscn").instantiate()
	var map_container = game_scene.get_node("Maps")
	
	for existing_child in map_container.get_children():
		existing_child.queue_free()
	
	var level = load(path).instantiate()
	map_container.add_child(level)
	
	get_tree().root.add_child(game_scene)
	self.queue_free()

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/UI/main_menu.tscn")

func _on_level_1_pressed() -> void:
	load_level("res://scenes/Levels/level_1.tscn")

func _on_level_2_pressed() -> void:
	load_level("res://scenes/Levels/level_2.tscn")

func _on_level_3_pressed() -> void:
	load_level("res://scenes/Levels/level_3.tscn")

func _on_level_4_pressed() -> void:
	load_level("res://scenes/Levels/level_4.tscn")

func _on_level_5_pressed() -> void:
	load_level("res://scenes/Levels/level_1.tscn")
