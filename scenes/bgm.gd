extends AudioStreamPlayer

func play_track(stream_path: String):
	var new_stream = load(stream_path)
	if stream != new_stream:
		stream = new_stream
		play()

func stop_music():
	stop()
