extends Node2D

func _process(delta):
	print($Camera.global_position)
	$Camera.global_position = $Hero.global_position
