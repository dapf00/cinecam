extends Button

var recording : bool = false 


func _on_pressed() -> void:
	recording = !recording
	if (recording):
		icon.current_frame = 1
	else:
		icon.current_frame = 0
