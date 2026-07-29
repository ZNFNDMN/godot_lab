extends Node2D

var a_distance := 100
var a_angle := 80
var a_angle_rad := deg_to_rad(a_angle)
var a = Vector2(a_distance * cos(a_angle_rad), a_distance * sin(a_angle_rad))

var a2_distance := a_distance * 2
var a2_angle := a_angle
var a2_angle_rad := deg_to_rad(a_angle)
var a2 = Vector2(a2_distance * cos(a2_angle_rad), a2_distance * sin(a2_angle_rad))

var b_distance := 100 
var b_angle := 180-a_angle # angle symétrique à a_angle
var b_angle_rad := deg_to_rad(b_angle)
var b = Vector2(b_distance * cos(b_angle_rad), b_distance * sin(b_angle_rad))

var b2_distance := b_distance * 2 
var b2_angle := b_angle # angle symétrique à a_angle
var b2_angle_rad := b_angle_rad
var b2 = Vector2(b2_distance * cos(b2_angle_rad), b2_distance * sin(b2_angle_rad))

func _ready() -> void:
	position = get_viewport().size / 2
	
func _draw() -> void:
	draw_circle(Vector2.ZERO, 10, Color('red'), true)
	draw_circle(a, 10, Color('purple'), true)
	draw_circle(a2, 10, Color('purple'), true)
	draw_circle(b, 10, Color('indianred'), true)
	draw_circle(b2, 10, Color('indianred'), true)
	
