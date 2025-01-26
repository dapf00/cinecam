extends Node2D

@export_range(2, 12, 1) var linesV : int = 2
@export_range(2, 12, 1) var linesH : int = 2
@export_range(1,10,1) var lineWidth : int = 2
@export var col : Color = Color.WHITE
@onready var display: CinePiDisplay = $".."

func update_lines() -> void:
	for child in get_children():
		remove_child(child)
	var texture_size = display.texture.get_size()
	var aspect_ratio_picture = texture_size.x/texture_size.y
	var resolution = display.size
	var aspect_ratio_display = resolution.x / resolution.y
	var picture_display_resolution = (
		Vector2(resolution.x, resolution.x / aspect_ratio_picture) 
		if aspect_ratio_picture >= aspect_ratio_display
		else Vector2(resolution.y * aspect_ratio_picture, resolution.y) 
		)
	var picture_offset = (resolution - picture_display_resolution) / 2
	
	for n in range(1,linesV+1):
		var this_line = Line2D.new()
		this_line.add_point(Vector2(
			picture_offset.x,
		 picture_offset.y + picture_display_resolution.y * n / ( linesV + 1)))
		this_line.add_point(Vector2(
			picture_offset.x + picture_display_resolution.x,
		 picture_offset.y + picture_display_resolution.y * n / ( linesV + 1)))
		this_line.width = lineWidth
		this_line.default_color = col
		add_child(this_line)
		
	for n in range(1, linesH +1):
		var this_line = Line2D.new()
		this_line.add_point(Vector2(
			picture_offset.x 
			+ picture_display_resolution.x * n  / ( linesH + 1),
		 picture_offset.y ))
		this_line.add_point(Vector2(
			picture_offset.x 
			+ picture_display_resolution.x * n  /  ( linesH + 1), 
			picture_offset.y + picture_display_resolution.y ))
		this_line.width = lineWidth
		this_line.default_color = col
		add_child(this_line)
		
	





func _on_grid_button_toggled(toggled_on: bool) -> void:
	if !visible:
		update_lines()
	visible = !visible
