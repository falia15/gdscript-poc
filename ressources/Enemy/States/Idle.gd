extends StateBaseEnnemy

func get_state_name():
	return "idle"

func change_state() -> StateBase:
		return states.idle

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("idle")

