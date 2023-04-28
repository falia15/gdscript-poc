extends "res://ressources/Entity/EntityBase.gd"

@onready
var Context = preload("res://ressources/Player/StateMachine/Context.gd")
var player_context

const JUMP_VELOCITY = -400.0

func _ready():
	player_context = Context.new()

func _physics_process(_delta):
	move()
	
	player_context.define_state()
	var state = player_context.get_current_state()
	state.play_animation(self.animation)

func move():
	var direction = Vector2.ZERO
	direction = Vector2(
		Input.get_axis("left", "right"),
		Input.get_axis("up", "down")
	).normalized()
	velocity = direction * speed
	move_and_slide()

"""
func define_state():
	match current_state:
		IDLE:
			if is_direction_key_press():
				change_state(WALK)
			pass
		WALK:
			if is_direction_key_press() == false:
				change_state(IDLE)
			pass
		
func handle_state():
	match current_state:
		IDLE:
			self.animation.play("idle")
		WALK:
			self.animation.play("walk_right")

func change_state(state: String) -> void:
	current_state = state

func is_direction_key_press():
	return Input.is_action_pressed("right") || Input.is_action_pressed("left") || Input.is_action_pressed("up") || Input.is_action_pressed("down")
"""
