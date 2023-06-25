extends Node
class_name StateMachine

@onready var current_state = $Idle

func get_states():
	return {}

func get_current_state() -> StateBase:
	return current_state
	
func define_state() -> void:
	var new_state = get_current_state().change_state()

	if new_state != current_state:
		change_state(new_state)

func change_state(state: StateBase) -> void:
	current_state = state
