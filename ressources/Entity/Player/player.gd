extends "res://ressources/Entity/EntityBase.gd"

@onready
var StateMachine = preload("res://ressources/Player/StateMachine.gd")
var player_context

const JUMP_VELOCITY = -400.0

func _ready():
	player_context = StateMachine.new()

func _physics_process(_delta):
	var direction = get_direction()
	move(direction)
	
	player_context.define_state()
	var state = player_context.get_current_state()
	state.play_animation(self.animation)
	state.set_facing_direction(self.sprite, direction)

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
