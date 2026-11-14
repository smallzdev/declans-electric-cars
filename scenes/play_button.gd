extends Node

var sfx_clicky: AudioStreamPlayer
var stream

func _ready() -> void:
	sfx_clicky = AudioStreamPlayer.new()
	stream = load("res://assets/clicky.mp3")
	add_child(sfx_clicky)

func _on_storybutton_pressed() -> void:
	sfx_clicky.set_stream(stream)
	sfx_clicky.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://scenes/story.tscn")

func _on_creditsButton_pressed() -> void:
	#sfx_clicky.set_stream(stream)
	#sfx_clicky.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://scenes/credits.tscn")

func _on_playbutton_pressed() -> void:
	#sfx_clicky.set_stream(stream)
	#sfx_clicky.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://scenes/main_game.tscn")
