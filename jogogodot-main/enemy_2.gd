extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:

	var input_vector = -Vector2(
		Input.get_axis("ui_left", "ui_right"), 
		Input.get_axis("ui_up", "ui_down")
	).normalized()
	velocity = input_vector * SPEED
	move_and_slide()
	
@onready var WalkAnimation = $AnimatedEnemy
func _process(delta: float) -> void:
	
	if velocity.length() > 0:
		if abs(velocity.x) > abs(velocity.y):
			if velocity.x > 0:
				WalkAnimation.play("right")
			else:
				WalkAnimation.play("left")
		else:
			if velocity.y < 0:
				WalkAnimation.play("down")
			else:
				WalkAnimation.play("up")                
	else:
		WalkAnimation.stop()	
