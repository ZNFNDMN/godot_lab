extends Sprite2D

var speed = 400
var angular_speed = PI

func _ready() -> void:
	position = get_viewport_rect().size / 2
	
func _process(delta: float) -> void:
	#rotation += angular_speed * delta
	#var velocity = Vector2.UP.rotated(rotation) * speed
	#position += velocity * delta
	#
	var direction = Vector2(0,0)
	
	if Input.is_action_pressed('ui_left'):
		direction = Vector2.LEFT
	if Input.is_action_pressed('ui_right'):
		direction = Vector2.RIGHT
	if Input.is_action_pressed('ui_up'):
		direction = Vector2.UP
	if Input.is_action_pressed('ui_down'):
		direction = Vector2.DOWN	
	#rotation += angular_speed * direction * delta
	print(position)
	position += direction * speed * delta

func _draw() -> void:
	print("circle position : " + str(position))
	draw_circle(Vector2.ZERO, 100, Color.WHITE, false, 3)
