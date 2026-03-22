extends Control

var need_to_kill: int
var killed: int
func _ready() -> void:
	$Contents/Message.text = "You need to kill " + str(need_to_kill) + " enemies\n"
	$Contents/Message.text += "Your Kill: " + str(killed)

func _on_main_menu_pressed() -> void:
	get_tree().root.get_node("GameScene").queue_free()
	get_tree().change_scene_to_file("res://scenes/UI/level_menu.tscn")

func _on_resume_pressed() -> void:
	var game_scene = get_tree().root.get_node("GameScene")
	var maps = game_scene.get_node("Maps")
	maps.process_mode = Node.PROCESS_MODE_INHERIT
	queue_free()
