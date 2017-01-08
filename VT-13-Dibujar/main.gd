extends Node2D

func _ready():
	set_process(true)
	
func _process(delta):
	update()
	
func _draw():
	draw_line(Vector2(100, 100), get_global_mouse_pos(), Color(0,1,0), 5)
	draw_circle(Vector2(200, 200), 100, Color(0.5, 0, 0.5, 0.5))
	draw_rect(Rect2(200, 100, 50, 100), Color(0, 0, 1, 0.5))
	