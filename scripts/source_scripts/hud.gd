extends Control

func update_hp_bar(value: int) -> void:
	%HPBar.value = value

func update_kill_value(count: int) -> void:
	%KillValue.set_text(str(count))
