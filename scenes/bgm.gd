extends AudioStreamPlayer

func _ready():
	play_track("res://assets/morningmood.mp3")
	
func play_track(stream_path: String):
	var new_stream = load(stream_path)
	if stream != new_stream:
		stream = new_stream
		play()
