extends StateBasePlayer

func change_state() -> StateBasePlayer:
	if is_direction_key_press():
		return Walk.new()
	return self

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("idle")