extends Node
class_name StateMachine

@onready var current_state = "idle"

@onready
var states = {
	idle = $Idle,
	walk = $Walk,
	attack = $Attack
}

func get_current_state() -> StateBase:
	return states[current_state]
	
func define_state() -> void:
	var new_state = get_current_state().change_state()

	if new_state != current_state:
		change_state(new_state)

func change_state(state: String) -> void:
	current_state = state
