extends "res://ressources/Entity/EntityBase.gd"

@onready
var state_machine = $StateMachine
var spawn: Vector2

func _ready():
	state_machine.init()
	spawn = position

func _physics_process(delta) -> void:
	state_machine.define_state()
	var state = state_machine.get_current_state()
	state.play_animation(self.animation)

	state.set_facing_direction(
		self.sprite, 
		Vector2.ZERO, 
		get_global_position(), 
		get_global_mouse_position()
	)
	
	if state.can_move():
		var direction = state.get_direction(spawn)
		move(direction)
		
func move(direction: Vector2):
	self.velocity = direction * speed
	move_and_slide()
	
	
