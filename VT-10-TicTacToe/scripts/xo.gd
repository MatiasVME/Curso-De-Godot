
extends Node2D

var o = load("res://assets/img/o.png")

func change_o():
	get_node("img_xo").set_texture(o)
