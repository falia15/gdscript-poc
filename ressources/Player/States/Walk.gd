extends StateBasePlayer

func change_state():
	if is_direction_key_press() == false:
		return states.idle
	if is_attack_key_pressed():
		return states.attack
	return states.walk

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("walk_right")

func set_facing_direction(
	sprite: Sprite2D, 
	direction: Vector2, 
	_global_position: Vector2, 
	_global_mouse_position: Vector2
) -> void:
	if is_moving_horizontaly():
		sprite.flip_h = direction.x < 0
