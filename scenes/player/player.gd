extends CharacterBody2D

var speed = 10
var size = 50
var start_position

func _ready():
	start_position = global_position


func _process(_delta):
	# Input
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity += direction * speed
	move_and_slide()
	
	if get_slide_collision_count() > 0:
		print(start_position)
		position = start_position
		velocity = Vector2(0,0)


func _draw():
	draw_circle(Vector2(0,0),size,Color(1,1,1))
