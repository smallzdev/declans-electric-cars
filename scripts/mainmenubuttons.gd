extends Button
# this script holds all the menu buttons

func _on_storybutton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/story.tscn")
	
func _on_creditsButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn")

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_game.tscn")
