extends CharacterBody2D

@export var hp_max: int = 100
@export var hp: int = hp_max
@export var defense: int = 0
@export var speed: int = 120

@onready var sprite = $Sprite2D
@onready var collisionShape = $CollisionShape2D
@onready var animation = $AnimationPlayer
@onready var hitbox = $HitBox
@onready var hurtbox = $HurtBox

#const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
