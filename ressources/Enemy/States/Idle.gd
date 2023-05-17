extends StateBaseEnnemy

func change_state() -> StateBase:
	return self

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("idle")
