extends Node2D

func _ready() -> void:
	position = get_viewport().size / 2
	
func _draw() -> void:
	draw_circle(Vector2.ZERO, 10, Color('white'), true)
