extends Button
# The settings button directly reads input events because it has to ignore 
# the elements of the settings view that are supposed to block inputs to other
# screen elements.
signal custom_pressed
var showSettings : bool = false

func _input(event):
	if (event is InputEventScreenTouch || event is InputEventMouseButton) && event.is_pressed():
		var button_rect := get_global_rect()
		if button_rect.has_point(event.position):
			emit_signal("custom_pressed")
