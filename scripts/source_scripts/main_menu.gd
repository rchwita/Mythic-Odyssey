extends Control

@onready var music: AudioStreamPlayer = $AudioStreamPlayer

func _ready() -> void:
	music.play()

func _on_play_pressed() -> void:
	music.stop()
	get_tree().change_scene_to_file("res://scenes/UI/level_menu.tscn")

func _on_how_to_play_pressed() -> void:
	music.stop()
	get_tree().change_scene_to_file("res://scenes/UI/how_to_play.tscn")

func _on_exit_pressed() -> void:
	#LevelData.reset_level_data() # call this function for only resetting purpose
	get_tree().quit()
