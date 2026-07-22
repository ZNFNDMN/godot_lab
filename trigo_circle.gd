extends Node2D

var radius := 300
var angles := [0, 45, 90, 135, 180, 225, 270, 315]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = get_viewport().size / 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _draw() -> void:
	# Cercle trigo
	draw_circle(Vector2.ZERO, radius, Color('white'), false, 1)
	
	for angle in angles:
		var angle_rad = deg_to_rad(angle)
		var direction = Vector2(cos(angle_rad), sin(angle_rad))
		var pos = direction * radius
		draw_circle(pos, 10, Color('white'))
		draw_string(ThemeDB.fallback_font, direction * (radius + 80) , str(angle) ,HORIZONTAL_ALIGNMENT_LEFT,0, 36)
	
	var angle1 = 95
	var angle_rad1 = deg_to_rad(angle1)
	var direction = Vector2(cos(angle_rad1), sin(angle_rad1))
	var pos = direction * radius
	draw_circle(pos, 20, Color('red'))
	draw_string(ThemeDB.fallback_font, direction * (radius + 80) , str(angle1) ,HORIZONTAL_ALIGNMENT_LEFT,0, 36,Color('red'))
	
	# symétrie de angle1 sur axe vertical
	var angle2 = 180 - angle1
	var angle2_rad = deg_to_rad(angle2)
	direction = Vector2(cos(angle2_rad), sin(angle2_rad))
	pos = direction * radius
	draw_circle(pos, 20, Color('green'))
	draw_string(ThemeDB.fallback_font, direction * (radius + 80) , str(angle2) ,HORIZONTAL_ALIGNMENT_LEFT,0, 36,Color('green'))

	
