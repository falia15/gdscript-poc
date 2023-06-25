extends StateBaseEnnemy

var is_player_detected = false

func change_state() -> StateBase:
	if is_player_detected == false:
		return states.patrolling
		
	is_player_detected = false
	return states.chasing

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("walk_right")

func get_state_name():
	return "patrolling"

func _on_detection_body_entered(body):
	print("player entered")
	is_player_detected = true
	pass # Replace with function body.
