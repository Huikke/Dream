extends CharacterBody2D

var speed = 10
var size = 50

func _process(delta):
	# Input
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity += direction * speed
	move_and_slide()

func _draw():
	draw_circle(Vector2(0,0),size,Color(1,1,1))
