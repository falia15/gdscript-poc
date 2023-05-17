extends StateBase
class_name StateBasePlayer

var Idle = load("res://ressources/Player/States/Idle.gd")
var Walk = load("res://ressources/Player/States/Walk.gd")
var Attack = load("res://ressources/Player/States/Attack.gd")

func is_direction_key_press() -> bool:
	return is_moving_horizontaly() || is_moving_verticaly()

func play_animation(_animation: AnimationPlayer) -> void:
	print("play_animation from StateBase not overriden")

func set_facing_direction(_sprite: Sprite2D, _direction: Vector2) -> void:
	pass

func is_moving_horizontaly() -> bool:
	return is_moving("horizontaly")
	
func is_moving_verticaly() -> bool:
	return is_moving("verticaly")

func is_attack_key_pressed():
	return Input.is_action_pressed("attack")
	
func can_move() -> bool:
	return true

func is_moving(direction: String) -> bool:
	var first_action = "up"
	var second_action = "down"
	if direction == "horizontaly":
		first_action = "right"
		second_action = "left"
		
	var first_action_pressed = Input.is_action_pressed(first_action)
	var second_action_pressed = Input.is_action_pressed(second_action)
	
	if first_action_pressed && second_action_pressed:
		return false

	return first_action_pressed || second_action_pressed;
