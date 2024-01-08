extends CharacterBody2D

var speed: float = 10
var size: float = 50
var start_position: Vector2
var direction: Vector2
var area_bool: bool = false

func _ready():
	start_position = global_position


func _process(_delta):
	# Mouse input
	if Input.is_mouse_button_pressed(1):
		direction = (get_global_mouse_position() - global_position).normalized()
	# Keyboard input (disabled if mouse input is on)
	else:
		direction = Input.get_vector("left", "right", "up", "down")
	
	velocity += direction * speed
	move_and_slide()
	
	if get_slide_collision_count() > 0 and not area_bool:
		position = start_position
		velocity = Vector2(0,0)


func _draw():
	draw_circle(Vector2(0,0),size,Color(1,1,1))
 

# If area is reached, collision resetting the position is removed
func area_reached():
	area_bool = true
