extends StateBaseEnnemy

# var Walk = preload("res://ressources/Enemy/States/Walk.gd")

func allow_detection():
	return true

func get_state_name():
	return "idle"

func change_state() -> StateBase:
		return self

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("idle")

