
extends Button

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	print("menu_button")

func _on_Button_pressed():
	get_tree().change_scene("res://splash.tscn")
