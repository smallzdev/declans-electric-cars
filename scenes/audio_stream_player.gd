extends Node

var sfx_clicky: AudioStreamPlayer
var stream

func _ready() -> void:
	sfx_clicky = AudioStreamPlayer.new()
	stream = load("res://assets/clicky.mp3")
	add_child(sfx_clicky)
