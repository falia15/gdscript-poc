extends StateBase
class_name StateBaseEnnemy

func can_move() -> bool:
	return false
	
func get_direction(spawn: Vector2) -> Vector2:
	return Vector2(0,0)

func set_facing_direction(
	sprite: Sprite2D, 
	direction: Vector2, 
	_global_position: Vector2, 
	_global_mouse_position: Vector2
) -> void:
	pass
