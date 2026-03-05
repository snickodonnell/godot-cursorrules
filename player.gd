extends CharacterBody2D
class_name Player

const MOVE_SPEED: float = 200.0

@onready var sprite: Sprite2D = $Sprite2D


func _ready() -> void:
	super()


func _physics_process(delta: float) -> void:
	super(delta)
	var direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * MOVE_SPEED
	move_and_slide()
