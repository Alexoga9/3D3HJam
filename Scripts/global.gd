extends Node

var dinero: int 
var velocidad_movimiento: int 

var axis : Vector2

func get_axis() ->Vector2:
	axis.x = int(Input.is_action_pressed("arriba")) - int(Input.is_action_pressed("abajo"))
	axis.y = int(Input.is_action_pressed("izquierda")) - int(Input.is_action_pressed("derecha"))
	return axis.normalized()
