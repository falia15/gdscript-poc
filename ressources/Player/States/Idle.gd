extends StateBasePlayer

func change_state():
	if is_direction_key_press():
		return states.walk
	if is_attack_key_pressed():
		return states.attack
	return states.idle

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("idle")
