extends "res://ressources/Player/StateMachine/States/Base/StateBase.gd"

func change_state() -> StateBase:
	if is_direction_key_press():
		return Walk.new()
	return self

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("idle")
