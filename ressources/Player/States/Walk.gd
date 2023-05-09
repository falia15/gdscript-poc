extends StateBasePlayer

func change_state() -> StateBasePlayer:
	if is_direction_key_press() == false:
		return Idle.new()
	return self

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("walk_right")

func set_facing_direction(sprite: Sprite2D, direction: Vector2) -> void:
	if is_moving_horizontaly():
		sprite.flip_h = direction.x < 0
