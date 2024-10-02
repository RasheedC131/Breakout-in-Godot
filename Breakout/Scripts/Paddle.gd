extends CharacterBody2D

var speed: int = 800

func _physics_process(delta):
	var direction = Input.get_axis("Move Left","Move Right")
	
	velocity.x = direction * speed
	
	
	move_and_slide()

#Ball Hits Right Side of Paddle
func _on_right_body_entered(body):
	body.direction.y = -1
	body.direction.x = 1

#Ball Hits Left Side of Paddle
func _on_left_body_entered(body):
	body.direction.y = -1
	body.direction.x = -1
