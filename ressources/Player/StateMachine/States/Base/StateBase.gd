extends Node

class_name StateBase

var Idle = load("res://ressources/Player/StateMachine/States/Idle.gd")
var Walk = load("res://ressources/Player/StateMachine/States/Walk.gd")

func is_direction_key_press() -> bool:
	return Input.is_action_pressed("right") || Input.is_action_pressed("left") || Input.is_action_pressed("up") || Input.is_action_pressed("down")

func play_animation(_animation: AnimationPlayer) -> void:
	print("play_animation from StateBase not overriden")
