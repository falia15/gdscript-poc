extends Node
class_name StateBase

@export var states: Dictionary

func play_animation(_animation: AnimationPlayer) -> void:
	print("play_animation from StateBase not overriden")
	
func can_move() -> bool:
	return true

# for debugging purpose
func get_state_name():
	return "default state"
