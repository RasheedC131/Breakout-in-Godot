extends Area2D

signal brick_hit(color: String)


func _on_right_body_entered(body):
	body.direction.x = 1

func _on_left_body_entered(body):
	body.direction.x = -1

func _on_body_entered(body):
	body.direction.y *= -1
	emit_signal("brick_hit","yellow")	
	queue_free()
