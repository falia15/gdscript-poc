extends StateMachine

func get_states():
	return {
		idle = $Idle,
		walk = $Walk,
		attack = $Attack
	}

func init():
	for child in get_children():
		child.states = get_states()
