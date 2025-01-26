extends Panel

func _ready() -> void:
	Input.emulate_mouse_from_touch = true


func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			print("Touch started at position: ", event.position)
		else:
			print("Touch ended at position: ", event.position)

	if event is InputEventScreenDrag:
		print("Touch moved to position: ", event.position)
