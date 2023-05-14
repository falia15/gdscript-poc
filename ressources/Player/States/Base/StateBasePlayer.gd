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
	return Input.is_action_pressed("right") || Input.is_action_pressed("left");
	
func is_moving_verticaly() -> bool:
	return Input.is_action_pressed("up") || Input.is_action_pressed("down")

func is_attack_key_pressed():
	return Input.is_action_pressed("attack")
