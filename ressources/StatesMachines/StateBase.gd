extends Node
class_name StateBase

func play_animation(_animation: AnimationPlayer) -> void:
	print("play_animation from StateBase not overriden")
	
func can_move() -> bool:
	return true

