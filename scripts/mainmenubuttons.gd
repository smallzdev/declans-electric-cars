extends Node

func _on_storybutton_pressed() -> void:
	#sfx_clicky.set_stream(stream)
	#sfx_clicky.play()
	#await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://scenes/story.tscn")

func _on_creditsButton_pressed() -> void:
	#sfx_clicky.set_stream(stream)
	#sfx_clicky.play()
	#await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://scenes/credits.tscn")

func _on_playbutton_pressed() -> void:
	#sfx_clicky.set_stream(stream)
	#sfx_clicky.play()
	#await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://scenes/difficulty_selector.tscn")
