extends StateBaseEnnemy

var is_player_detected = false
var player_location: Vector2
var global_direction = Vector2.ZERO

func change_state() -> StateBase:
	if is_player_detected == false:
		return states.patrolling
		
	is_player_detected = false
	var chasing = states.chasing
	chasing.player_location = player_location
	return chasing

func can_move():
	return true

func get_direction(spawn: Vector2) -> Vector2:
	return Vector2.ZERO
	
func get_random_int() -> int:
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	return rng.randi_range(-10, 10)

func play_animation(animation: AnimationPlayer) -> void:
	animation.play("walk_right")

func get_state_name():
	return "patrolling"

func _on_detection_body_entered(body) -> void:
	is_player_detected = true
	player_location = body.position
