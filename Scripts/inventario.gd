extends Control

@onready var inventario: Inventario = preload("res://Recursos/Inventario_personaje.tres")
@onready var celdas: Array = $ColorRect/GridContainer.get_children()

var abierto = false
# Called when the node enters the scene tree for the first time.
func _ready():
	abierto = false
	celdas_actualizadas()


func celdas_actualizadas():
	for i in range(min(inventario.items.size(), celdas.size())):
		celdas[i].actualizar(inventario.items[i])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if abierto:
		show()
	else:
		hide()
	if Input.is_action_just_pressed("tab"):
		abierto = !abierto
