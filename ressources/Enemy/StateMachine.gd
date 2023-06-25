extends StateMachine

func init():
	super.init()
	current_state = $Patrolling # override starting current state

func get_states():
	return {
		idle = $Idle,
		walk = $Walk,
		patrolling = $Patrolling,
		chasing = $Chasing,
		#returning = $Returning
	}
