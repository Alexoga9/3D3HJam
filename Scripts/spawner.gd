extends Node3D

@onready var main = get_parent()

var spawn = preload("res://Nodes/Enemigos/enemigo.tscn")

func _on_timer_timeout():
	var instanciar = spawn.instantiate()
	main.add_child(instanciar)
