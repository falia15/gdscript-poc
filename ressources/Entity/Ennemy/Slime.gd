extends "res://ressources/Entity/EntityBase.gd"

@onready
var state_machine = $StateMachine
var enemy_context

func _ready():
	#enemy_context = StateMachine.new()
	pass

func _physics_process(_delta) -> void:
	state_machine.define_state()
	var state = state_machine.get_current_state()
	state.play_animation(self.animation)

	state.set_facing_direction(
		self.sprite, 
		Vector2.ZERO, 
		get_global_position(), 
		get_global_mouse_position()
	)

	#print(state.get_name_state())
	#print(is_detected)
