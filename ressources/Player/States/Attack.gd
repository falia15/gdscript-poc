extends StateBasePlayer

var animation_name = "attack_right"
var animation_played = false

func change_state() -> StateBasePlayer:
	if animation_played == false:
		return self
	
	if is_direction_key_press() == false:
		return Idle.new()
	else:
		return Walk.new()

func play_animation(animation: AnimationPlayer) -> void:
	animation.play(animation_name)
	await animation.animation_finished
	animation_played = true

func can_move() -> bool:
	return false
