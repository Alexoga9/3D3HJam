extends Panel

@export var precio: int
@onready var label = $ColorRect/Label


# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = str(precio)



func _al_comprar():
	if Global.dinero >= precio:
		Global.dinero = Global.dinero - precio
