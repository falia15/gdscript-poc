extends Node
class_name StateMachine

var current_state: StateBase
var default_state: StateBase

func _init() -> void:
	current_state = default_state

func get_current_state() -> StateBase:
	return current_state
	
func define_state() -> void:
	var new_state = current_state.change_state()
	if new_state != current_state:
		change_state(new_state)

func change_state(state: StateBase) -> void:
	current_state = state
