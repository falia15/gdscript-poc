extends StateMachine

func get_states():
	return {
		idle = $Idle,
		walk = $Walk,
		#patroling = $Patroling,
		#chasing = $Chasing,
		#returning = $Returning
	}
