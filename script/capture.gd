extends HBoxContainer
var time = 0.
var done = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time += delta
	if time>1. and not done:
		var img = get_parent().get_viewport().get_texture().get_image()
		img.save_png("/home/dario/results.png")
		done = true
