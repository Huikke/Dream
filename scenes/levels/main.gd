extends Node2D


func _on_rectangle_area_player_entered_area():
	var tween = create_tween()
	tween.tween_property($Player,"velocity",Vector2(0,0),0.2)
	$Player.speed = 0
