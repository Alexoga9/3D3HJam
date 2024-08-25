extends Node3D

@onready var panel = $Panel

func _ready():
	panel.hide()


func _al_personaje_entrar(_body):
	panel.show()


func _al_personaje_salir(_body):
	panel.hide()
