
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	print("splash")

func _on_Timer_timeout():
	get_tree().change_scene("res://menu.tscn")
