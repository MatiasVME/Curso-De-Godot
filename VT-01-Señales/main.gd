extends Node2D

func _ready():
	pass

func _on_Button_pressed():
	get_node("Label").set_text("Hola mundo")
