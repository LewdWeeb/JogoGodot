extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta: float) -> void:

	var input_vector = Vector2(
		Input.get_axis("ui_left", "ui_right"), 
		Input.get_axis("ui_up", "ui_down")
	).normalized()
	velocity = input_vector * SPEED
	move_and_slide()


@onready var WalkAnimation = $AnimatedSprite2D
func _process(delta):
	if Input.is_action_pressed("ui_down"):
		WalkAnimation.play("down")
	elif Input.is_action_pressed("ui_up"):
		WalkAnimation.play("up")
	elif Input.is_action_pressed("ui_right"):
		WalkAnimation.play("right")
	elif Input.is_action_pressed("ui_left"):
		WalkAnimation.play("left")
	else:
		WalkAnimation.stop()
