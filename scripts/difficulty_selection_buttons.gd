extends Button

func _on_easybutton_pressed() -> void:
	Global.difficulty = 1
	get_tree().change_scene_to_file("res://scenes/main_game.tscn")

func _on_mediumbutton_pressed() -> void:
	Global.difficulty = 2
	get_tree().change_scene_to_file("res://scenes/main_game.tscn")
func _on_hardbutton_pressed() -> void:
	Global.difficulty = 3
	get_tree().change_scene_to_file("res://scenes/main_game.tscn")
