extends Area2D


func _draw():
	draw_rect(Rect2(0,0,150,150),Color(0.8,0.1,0.1),true,-1.0)


func _on_body_entered(body):
	print(body, " has entered")


func _on_body_exited(body):
	print(body, " has exited")
