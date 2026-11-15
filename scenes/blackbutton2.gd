extends Button

var sfx_clicky: AudioStreamPlayer
var stream

func _ready() -> void:
	sfx_clicky = AudioStreamPlayer.new()
	stream = load("res://assets/clicky.mp3")
	add_child(sfx_clicky)
	sfx_clicky.set_stream(stream)
	sfx_clicky.play()
	
func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_game.tscn") # Replace with function body.


func _on_link_button_pressed() -> void:
	pass # Replace with function body.
