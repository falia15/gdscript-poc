extends StateBasePlayer

var animation_name = "attack_right"
var animation_played = false

func change_state():
	if animation_played == false:
		return states.attack
	
	animation_played = false
	if is_direction_key_press() == false:
		return states.idle
	else:
		return states.walk

func play_animation(animation: AnimationPlayer) -> void:
	animation.play(animation_name)

func can_move() -> bool:
	return false

func set_facing_direction(
	sprite: Sprite2D, 
	_direction: Vector2, 
	global_position: Vector2, 
	global_mouse_position: Vector2
) -> void:
	sprite.flip_h = global_position.x > global_mouse_position.x

func _on_animation_player_animation_finished(anim_name):
	animation_played = true
	print("anim finish")
