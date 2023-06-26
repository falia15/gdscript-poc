extends StateBaseEnnemy

@export var player_location: Vector2

func change_state() -> StateBase:
	return states.chasing

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("walk_right")

func get_state_name():
	return "chasing"

