
extends Node2D

var player = load("res://player.tscn")

func _ready():
	set_process_input(true)
	
func _input(event):
	if event.is_action_pressed("ui_accept"):
		var p = player.instance()
		self.add_child(p)
		p.set_pos(Vector2(rand_range(0, globa.RES_X), rand_range(0, globa.RES_Y)))
		p.add_to_group("players")
	elif event.is_action_pressed("back"):
		for i in get_tree().get_nodes_in_group("players"):
			i.queue_free()

