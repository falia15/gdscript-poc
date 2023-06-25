extends StateBaseEnnemy

func change_state() -> StateBase:
		return states.chasing

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("walk_right")

func get_state_name():
	return "chasing"
