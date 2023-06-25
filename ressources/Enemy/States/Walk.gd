extends StateBaseEnnemy

func get_state_name():
	return "walk"

func change_state() -> StateBase:
	return states.walk

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("walk_right")

func set_facing_direction(
	sprite: Sprite2D, 
	direction: Vector2, 
	_global_position: Vector2, 
	_global_mouse_position: Vector2
) -> void:
	pass
