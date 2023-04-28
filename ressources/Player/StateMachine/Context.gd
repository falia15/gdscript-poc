extends Node

class_name Context

var Idle = load("res://ressources/Player/StateMachine/States/Idle.gd")
var StateBase = load("res://ressources/Player/StateMachine/States/Base/StateBase.gd")

var current_state

func _init() -> void:
	current_state = Idle.new()

func get_current_state() -> StateBase:
	return current_state
	
func define_state() -> void:
	var new_state = current_state.change_state()
	if new_state != current_state:
		change_state(new_state)

func change_state(state: StateBase) -> void:
	current_state = state
