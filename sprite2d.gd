extends Sprite2D

var angular_speed = 0.0 # équivalent de 2PI , soit 6.28 radians un tour de cercle complet
var rotation_speed = 0.0

var start_direction = Vector2.UP
var start_angle = Vector2.UP.angle() # pour test

var timer = 0

func _ready() -> void:
	position = get_viewport_rect().size / 2
	
func _process(delta: float) -> void:
	#rotation += angular_speed * delta
	angular_speed = TAU * delta
	timer += delta
	#var direction = Vector2(0,0)
	if Input.is_action_pressed('ui_left'):
		start_direction = start_direction.rotated(angular_speed)
		queue_redraw() # pour forcer la fonction _draw()
	
		#direction = Vector2.LEFT
	if Input.is_action_pressed('ui_right'):
		start_direction = start_direction.rotated(-angular_speed)
		queue_redraw() # pour forcer la fonction _draw()
	#if Input.is_action_pressed('ui_up'):
		#direction = Vector2.UP
	#if Input.is_action_pressed('ui_down'):
		#direction = Vector2.DOWN	
	#rotation += angular_speed * direction * delta
	#position += direction * speed * delta

func _draw() -> void:
	#var x = 40 * cos(start_direction.angle())
	#var y = 40 * sin(start_direction.angle())
	draw_circle(Vector2.ZERO, 30, Color.WHITE, false, 3, true)
	#Vector2.UP * 100 = (0,-100)
	draw_circle(start_direction * 50, 5, Color.WHITE, true, true)
