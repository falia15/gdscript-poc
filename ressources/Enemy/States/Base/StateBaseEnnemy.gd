extends StateBase
class_name StateBaseEnnemy

func allow_detection():
	return false

func set_facing_direction(
	sprite: Sprite2D, 
	direction: Vector2, 
	_global_position: Vector2, 
	_global_mouse_position: Vector2
) -> void:
	pass
