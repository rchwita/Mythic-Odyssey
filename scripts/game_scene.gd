extends Node2D

signal levelup

func _ready() -> void:
	# in Enemy node, in the Node section 
	# under Groups (Global Groups): enemies
	var enemies: Array = get_tree().get_nodes_in_group("enemies")
	for enemy in enemies:
		enemy.died.connect(experience_gained)
	
	# in Player node, in the Node section
	# under Groups (Global Groups): player
	var player: CharacterBody2D = get_tree().get_first_node_in_group("player")
	levelup.connect(player.calculate_stats)

func experience_gained(exp_gain: int) -> void:
	if PlayerData.level == LevelData.MAX_LEVEL:
		return
	
	var new_experience: int = PlayerData.experience + exp_gain
	if new_experience >= LevelData.LEVEL_THRESHOLDS[PlayerData.level - 1]:
		level_up(new_experience)
	else:
		PlayerData.experience = new_experience

func level_up(new_experience: int) -> void:
	print("Yah! I become more powerfulllllll!!!")
	new_experience -= LevelData.LEVEL_THRESHOLDS[PlayerData.level - 1]
	PlayerData.level += 1
	PlayerData.experience = new_experience
	levelup.emit()
