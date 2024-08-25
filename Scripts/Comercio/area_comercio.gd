extends Node3D

@onready var panel = $Panel

func _ready():
	panel.hide()


func _al_personaje_entrar(body):
	panel.show()


func _al_personaje_salir(body):
	panel.hide()
