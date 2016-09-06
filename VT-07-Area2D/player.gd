
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _on_Area2D_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("click_left"):
		queue_free()
	
func _on_Area2D_mouse_enter():
	print("entro al collision shape")
