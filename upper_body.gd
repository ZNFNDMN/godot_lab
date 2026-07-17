extends Node2D

var head_angles = [360, 180,90 ,360] # 360 2 fois pour fermer polyline
var head_points = PackedVector2Array([])

var torso_angles = [90, 225 , 315, 90]  # 90 2 fois pour fermer polyline
var torso_points = PackedVector2Array([])

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = get_viewport().size / 2
	position -= Vector2(0, 300) # décale le personnage par rapport au centre

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _draw() -> void:
	# draw head
	for angle in head_angles:
		var angle_rad = deg_to_rad(angle)
		var direction = Vector2(cos(angle_rad), sin(angle_rad))
		var pos = direction * 100
		head_points.append(pos)
		# dessine les lignes intérieures de la tête
		draw_line(pos, Vector2(0 , 50) , Color('white'), 1, false)
	
	for angle in torso_angles:
		var angle_rad = deg_to_rad(angle)
		var direction = Vector2(cos(angle_rad), sin(angle_rad))
		var pos = direction * 200
		pos += Vector2(0,300) # décale le torse en dessous de la tête
		torso_points.append(pos)
		#dessine les lignes interieures du torse
		draw_line(pos, Vector2(0 , 200) , Color('white'), 1, false)
	
	# ajout d'une ligne ne correspondant à aucun angle du torse
	var angle_rad = deg_to_rad(270) 
	var torso_center = Vector2(0, 300)
	var direction = Vector2(cos(angle_rad), sin(angle_rad)) 
	var pos = torso_center + direction * 200
	print(position.distance_to(Vector2(0,300)))
	
	draw_circle(pos, 5, Color('red'), true)
	#draw_circle()
	#draw_polygon(head_points, [])
	draw_polyline(head_points, Color('white'), 1, false) # tête
	draw_polyline(torso_points, Color('white'), 1, false)# torse
	
	# draw torso 
	
	
