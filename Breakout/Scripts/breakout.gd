extends Node2D


func _on_walls_dead_ball():
	var new_ball = preload("res://Scenes/ball.tscn").instantiate()
	new_ball.global_position = Vector2(567,366)
	add_child(new_ball)


func _on_ui_game_over():
	%DeathScreen.visible = true
	get_tree().paused = true
