extends CharacterBody2D

var direction = Vector2(1,1)

@export var speed = 250

func _physics_process(delta):
	velocity = direction * speed
	
	move_and_slide()
