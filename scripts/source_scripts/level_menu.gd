extends Control

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/UI/main_menu.tscn")

func _on_level_1_pressed() -> void:
	var game_scene = load("res://scenes/main/game_scene.tscn").instantiate()
	var map_container = game_scene.get_node("Maps")
	
	for existing_child in map_container.get_children():
		existing_child.queue_free()
	
	var level1 = load("res://scenes/Levels/level_1.tscn").instantiate()
	map_container.add_child(level1)
	
	get_tree().root.add_child(game_scene)
	self.queue_free()

func _on_level_2_pressed() -> void:
	var game_scene = load("res://scenes/main/game_scene.tscn").instantiate()
	var map_container = game_scene.get_node("Maps")
	
	for existing_child in map_container.get_children():
		existing_child.queue_free()
	
	var level1 = load("res://scenes/Levels/level_2.tscn").instantiate()
	map_container.add_child(level1)
	
	get_tree().root.add_child(game_scene)
	self.queue_free()

func _on_level_3_pressed() -> void:
	var game_scene = load("res://scenes/main/game_scene.tscn").instantiate()
	var map_container = game_scene.get_node("Maps")
	
	for existing_child in map_container.get_children():
		existing_child.queue_free()
	
	var level1 = load("res://scenes/Levels/level_3.tscn").instantiate()
	map_container.add_child(level1)
	
	get_tree().root.add_child(game_scene)
	self.queue_free()

func _on_level_4_pressed() -> void:
	var game_scene = load("res://scenes/main/game_scene.tscn").instantiate()
	var map_container = game_scene.get_node("Maps")
	
	for existing_child in map_container.get_children():
		existing_child.queue_free()
	
	var level1 = load("res://scenes/Levels/level_4.tscn").instantiate()
	map_container.add_child(level1)
	
	get_tree().root.add_child(game_scene)
	self.queue_free()

func _on_level_5_pressed() -> void:
	var game_scene = load("res://scenes/main/game_scene.tscn").instantiate()
	var map_container = game_scene.get_node("Maps")
	
	for existing_child in map_container.get_children():
		existing_child.queue_free()
	
	# need to change to level 5 after creating level 5
	var level1 = load("res://scenes/Levels/level_1.tscn").instantiate()
	map_container.add_child(level1)
	
	get_tree().root.add_child(game_scene)
	self.queue_free()
