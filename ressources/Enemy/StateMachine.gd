extends StateMachine

var Idle = preload("res://ressources/Enemy/States/Idle.gd")

func _init():
	default_state = Idle.new()
	super()
