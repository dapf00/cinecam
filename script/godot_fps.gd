extends Label

func _process(delta: float) -> void:
	text = "%d" % Engine.get_frames_per_second()
