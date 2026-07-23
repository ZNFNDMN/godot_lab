extends Node2D

func _draw() -> void:
	var right_arm_pos = Vector2(-160, 250) # position du bras droit
	draw_circle(right_arm_pos, 5, Color('blue'), true)
	var angles := [45, 258, 90, 45]
	var angles_list_size = angles.size()
	var angles_distance := [100, 150, 200, 100] 
	var angles_pos := []
	var angles_color := ['red', 'green', 'blue', 'yellow']
	
	for i in range(angles_list_size):
		var angle_rad = deg_to_rad(angles[i])
		var direction = Vector2(cos(angle_rad), sin(angle_rad))
		angles_pos.append(direction * angles_distance[i])
		angles_pos[-1] += right_arm_pos
		draw_line(angles_pos[-1], right_arm_pos , Color('white'), 1, false)
		#draw_circle(angles_pos[-1], 2, Color(angles_color[i]), true)

	
	draw_polyline(angles_pos, Color('white'), 2, false) 
