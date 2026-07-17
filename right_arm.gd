extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#position = get_viewport().size / 2
	#position -= Vector2(0, 200) # décale le personnage par rapport au centre


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _draw() -> void:
	draw_circle(Vector2(get_viewport().size / 2) - Vector2(200,100), 20, Color('red'), true)
