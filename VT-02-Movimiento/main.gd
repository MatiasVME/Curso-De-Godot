
extends Node2D

onready var img = get_node("img")

const SPEED = 100

func _ready():
	set_process(true)
	
func _process(delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("ui_up"):
		motion += Vector2(0, -1)
	if Input.is_action_pressed("ui_down"):
		motion += Vector2(0, 1)
	if Input.is_action_pressed("ui_right"):
		motion += Vector2(1, 0)
	if Input.is_action_pressed("ui_left"):
		motion += Vector2(-1, 0)
	
	var pos = img.get_pos()
	pos += motion * delta * SPEED
	img.set_pos(pos)
