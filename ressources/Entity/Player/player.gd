extends "res://ressources/Entity/EntityBase.gd"

@onready
var state_machine = $StateMachine

const JUMP_VELOCITY = -400.0

func _ready():
	state_machine.init()

func _physics_process(_delta):
	state_machine.define_state()
	var state = state_machine.get_current_state()
	state.play_animation(self.animation)
	
	var direction = get_direction()
	if state.can_move():
		move(direction)

	state.set_facing_direction(
		self.sprite, 
		direction, 
		get_global_position(), 
		get_global_mouse_position()
	)

func move(direction: Vector2) -> void:
	velocity = direction * speed
	move_and_slide()

func get_direction() -> Vector2:
	var direction = Vector2.ZERO
	direction = Vector2(
		Input.get_axis("left", "right"),
		Input.get_axis("up", "down")
	).normalized()
	return direction

func get_mouse_direction():
	return get_viewport().get_mouse_position()
