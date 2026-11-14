extends Button
# this script holds all the menu buttons
@onready var sfx_clicky: AudioStreamPlayer2D = $"../sfx_clicky"



func _on_storybutton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/story.tscn")
	sfx_clicky.play()
func _on_creditsButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
	sfx_clicky.play()
func _on_playbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_game.tscn")
	sfx_clicky.play()
