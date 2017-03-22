extends ParallaxBackground

var offset = 0

func _ready():
	set_process(true)
	
func _process(delta):
	offset -= 100 * delta
	set_scroll_offset(Vector2(offset, 0))
