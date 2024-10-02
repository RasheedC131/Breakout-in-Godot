extends CanvasLayer

@export var lives = 3
var score = 0

signal game_over

func _process(delta):
	$Lives.text = "x" + str(lives)
	$Score.text = str(score)
	
	if lives == 0:
		emit_signal("game_over")
		print("gameover")

func _on_walls_dead_ball():
	if lives > 0: 
		lives -= 1


func _on_brick_hit(color):
	match color:
		"yellow":
			score += 1
		"green":
			score += 3
		"orange":
			score += 5
		"red":
			score += 7
