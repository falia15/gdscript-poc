extends StateMachine

func get_states():
	return {
		idle = $Idle,
		walk = $Walk,
		attack = $Attack
	}
