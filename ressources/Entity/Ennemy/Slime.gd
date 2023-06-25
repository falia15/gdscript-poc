extends "res://ressources/Entity/EntityBase.gd"

@onready
var state_machine = $StateMachine

func _ready():
	state_machine.init()

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
