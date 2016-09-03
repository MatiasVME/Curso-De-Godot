
extends Node2D

onready var img = get_node("img")

const SPEED = 100
var scale
var rotate

func _ready():
	scale = Vector2(1, 1)
	rotate = 0
	
	self.set_process(true)
	
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
	if Input.is_action_pressed("space_key"):
		scale.x += 0.01
		scale.y += 0.01
		rotate += 1
		
	img.set_scale(scale)
	img.set_rot(deg2rad(rotate))
	
	var pos = img.get_pos()
	pos += motion * delta * SPEED
	img.set_pos(pos)
