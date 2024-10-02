extends Node

signal dead_ball

#Ball Bounce
func _on_top_ball_detector_body_entered(body):
	body.direction.y *= -1

func _on_left_ball_detector_body_entered(body):
	body.direction.x = 1

func _on_right_ball_detector_body_entered(body):
	body.direction.x = -1

#Dead Ball
func _on_bottom_ball_detector_body_entered(body):
	if %UI.lives > 0:
		body.queue_free()
		emit_signal("dead_ball")
		






