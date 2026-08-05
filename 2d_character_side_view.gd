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

@export var angle_min := deg_to_rad(-90.0)
@export var angle_max := deg_to_rad(90.0)
@export var angle2_min := deg_to_rad(90.0)
@export var angle2_max := deg_to_rad(-90.0)

@export var frequence := 0.3   # oscillations par seconde

var _t := 0.0

func _ready() -> void:
	position = get_viewport().size / 2
	
func _process(delta: float) -> void:
	_t += delta
	var k := (sin(TAU * frequence * _t) + 1.0) * 0.5  # 0 → 1
	var j := (sin(TAU * frequence * _t) + 1.0) * 0.5  # 0 → 1
	#rotation_degrees = lerp(angle_min, angle_max, k
	var angle = lerp(angle_min, angle_max, k)
	var angle2 = lerp(angle2_min, angle2_max, j)
	#print(rotation_degrees)
	#b2_angle_rad += delta
	b2 = Vector2(b.x + b2_distance * cos(angle), b.y + b2_distance * sin(angle))
	a2 = Vector2(a.x + a2_distance * cos(angle2), a.y + a2_distance * sin(angle2))
	
	queue_redraw()
	
func _draw() -> void:
	draw_circle(Vector2.ZERO, 10, Color('red'), true)
	draw_circle(a, 10, Color('purple'), true)
	draw_circle(a2, 10, Color('purple'), true)
	draw_circle(b, 10, Color('indianred'), true)
	draw_circle(b2, 10, Color('indianred'), true)
	
