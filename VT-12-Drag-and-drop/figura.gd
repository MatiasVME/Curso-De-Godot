extends Node2D

var is_inside = false

func _ready():
	set_process(true)
	
func _process(delta):
	if is_inside:
		self.set_global_pos(get_global_mouse_pos())
	
func _on_area_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		is_inside = true
		print("se ha clickeado dentro")
	if event.is_action_released("left_click"):
		is_inside = false
		print("se ha soltado el click")