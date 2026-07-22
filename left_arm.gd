extends Node2D

func _draw() -> void:
	var left_arm_pos = Vector2(180, 250) # position du bras droit
	draw_circle(left_arm_pos, 5, Color('red'), true)
	var angles := [135, -78, 90, 135] # quel angle pour le bras gauche
	var angles_list_size = angles.size()
	var angles_distance := [100, 200, 350, 100] 
	var angles_pos := []
	var angles_color := ['red', 'green', 'blue', 'yellow']
	
	for i in range(angles_list_size):
		var angle_rad = deg_to_rad(angles[i])
		var direction = Vector2(cos(angle_rad), sin(angle_rad))
		angles_pos.append(direction * angles_distance[i])
		angles_pos[-1] += left_arm_pos
		draw_line(angles_pos[-1], left_arm_pos , Color('white'), 1, false)
		draw_circle(angles_pos[-1], 5, Color(angles_color[i]), true)
	
	draw_polyline(angles_pos, Color('white'),5, false) 
