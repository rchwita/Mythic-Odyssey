extends Node2D

signal levelup

@export var end_game_screen_packed: PackedScene

@onready var HUD: Control = $UI/HUD

var total_enemies: int
var killed_enemies: int = 0

func _ready() -> void:
	# in Enemy node, in the Node section 
	# under Groups (Global Groups): enemies
	var enemies: Array = get_tree().get_nodes_in_group("enemies")
	total_enemies = enemies.size()
	for enemy in enemies:
		enemy.died.connect(enemy_died)
	
	# in Player node, in the Node section
	# under Groups (Global Groups): player
	var player: CharacterBody2D = get_tree().get_first_node_in_group("player")
	levelup.connect(player.calculate_stats)
	player.game_over.connect(display_end_game_screen)
	player.update_hp_bar.connect(HUD.update_hp_bar)

func enemy_died(exp_reward: int) -> void:
	killed_enemies += 1
	HUD.update_kill_value(killed_enemies)
	experience_gained(exp_reward)
	
	if killed_enemies == total_enemies:
		display_end_game_screen(true)

func experience_gained(exp_gain: int) -> void:
	if PlayerData.level == LevelData.MAX_LEVEL:
		return
	
	var new_experience: int = PlayerData.experience + exp_gain
	if new_experience >= LevelData.LEVEL_THRESHOLDS[PlayerData.level - 1]:
		level_up(new_experience)
	else:
		PlayerData.experience = new_experience

func display_end_game_screen(win: bool) -> void:
	var end_game_screen_instance: Control = end_game_screen_packed.instantiate()
	end_game_screen_instance.win = win
	end_game_screen_instance.replay_level = $Maps.get_child(0).scene_file_path
	$UI.add_child(end_game_screen_instance)
	$Maps.process_mode = Node.PROCESS_MODE_DISABLED

func level_up(new_experience: int) -> void:
	print("Yah! I become more powerfulllllll!!!")
	new_experience -= LevelData.LEVEL_THRESHOLDS[PlayerData.level - 1]
	PlayerData.level += 1
	PlayerData.experience = new_experience
	levelup.emit()
