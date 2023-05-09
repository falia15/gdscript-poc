extends StateMachine

var Idle = preload("res://ressources/Player/States/Idle.gd")
var Walk = preload("res://ressources/Player/States/Walk.gd")

func _init():
	default_state = Idle.new()
	super()
