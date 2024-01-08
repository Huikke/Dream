extends Area2D

signal player_entered_area
var font: Font = load("res://graphics/PressStart2P-Regular.ttf")

func _draw():
	#draw_rect(Rect2(0,0,150,150),Color(0.8,0.1,0.1),true,-1.0)
	#draw_arc(Vector2(0,0),50,10,14,8,Color(1,0,0))
	#draw_string(font,Vector2(0,0),"Hello World")
	draw_polygon([Vector2(0,0),Vector2(150,0),Vector2(150,150),Vector2(0,150)],[Color(1,0,0),Color(0,1,0),Color(0,0,1),Color(1,1,1)])


func _on_body_entered(body):
	if "area_reached" in body:
		body.area_reached()
	player_entered_area.emit()
