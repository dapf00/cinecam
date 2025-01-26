extends CinePiDisplay

func _ready() -> void:
	pass


func _on_iso_button_item_selected(index: int) -> void:
	shared_context.cinepi_commands.set_analogue_gain(pow(2,index))


func _on_et_button_item_selected(index: int) -> void:
	var exp_time = 1./30
	match index:
		0: 
			exp_time = 1./30
		1: 
			exp_time = 1./60
		2: 
			exp_time = 1./125
		3: 
			exp_time = 1./250
		4: 
			exp_time = 1./500
		5: 
			exp_time = 1./1000
		_: 
			exp_time = 1./30
	exp_time = exp_time * pow(10,9)
	shared_context.cinepi_commands.set_exposure_time(int(exp_time))
	


func _on_record_button_pressed() -> void:
	var rec = shared_context.cinepi_info.get_is_recording()
	shared_context.cinepi_commands.set_recording(!rec)


func _on_awb_mode_button_item_selected(index: int) -> void:
	shared_context.cinepi_commands.set_awb_mode(index)

func _on_ae_mode_button_item_selected(index: int) -> void:
	shared_context.cinepi_commands.set_ae_exposure_mode(index)


func _on_ae_flicker_mode_button_item_selected(index: int) -> void:
	shared_context.cinepi_commands.set_ae_flicker_mode(index)

func _on_aecm_preset_button_item_selected(index: int) -> void:
	shared_context.cinepi_commands.set_ae_constraint_mode(index)


func _on_aemm_preset_button_item_selected(index: int) -> void:
	shared_context.cinepi_commands.set_ae_metering_mode(index)


func _on_lt_button_item_selected(index: int) -> void:
	shared_context.cinepi_commands.set_color_temperature(4800 + index * 400)	
	
func _on_saturation_slider_value_changed(value: float) -> void:
	shared_context.cinepi_commands.set_saturation(value)


func _on_gamma_slider_value_changed(value: float) -> void:
	shared_context.cinepi_commands.set_gamma(value)

func _on_ae_button_toggled(toggled_on: bool) -> void:
	shared_context.cinepi_commands.set_ae_enable(toggled_on)

func _on_awb_button_toggled(toggled_on: bool) -> void:
	shared_context.cinepi_commands.set_awb_enable(toggled_on)
