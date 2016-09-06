
extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	if get_colliding_bodies().size() > 0:
		print("Ha colisionado el rigid body")


