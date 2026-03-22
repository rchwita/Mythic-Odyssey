extends Control

var win: bool = false
func _ready() -> void:
	if win:
		$Contents/Message.text = "You Win !!!"
	else:
		$Contents/Message.text = "You Lose"

var replay_level: String = ""
func _on_replay_pressed() -> void:
	var root = get_tree().root
	var game_node = root.get_node("GameScene")
	root.remove_child(game_node)
	
	var game_scene = load("res://scenes/main/game_scene.tscn").instantiate()
	var map_container = game_scene.get_node("Maps")
	
	for existing_child in map_container.get_children():
		existing_child.queue_free()
	
	# need to change to level 5 after creating level 5
	var level = load(replay_level).instantiate()
	map_container.add_child(level)
	
	root.add_child(game_scene)
	self.queue_free()

func _on_main_menu_pressed() -> void:
	get_tree().root.get_node("GameScene").queue_free()
	get_tree().change_scene_to_file("res://scenes/UI/level_menu.tscn")
