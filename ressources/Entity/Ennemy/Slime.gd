extends "res://ressources/Entity/EntityBase.gd"

@onready
var StateMachine = preload("res://ressources/Enemy/StateMachine.gd")
var enemy_context

func _ready():
	enemy_context = StateMachine.new()

func _physics_process(_delta) -> void:
	enemy_context.define_state()
	var state = enemy_context.get_current_state()
	state.play_animation(self.animation)

	state.set_facing_direction(
		self.sprite, 
		Vector2.ZERO, 
		get_global_position(), 
		get_global_mouse_position()
	)

