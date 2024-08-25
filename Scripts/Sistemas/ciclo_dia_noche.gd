extends Node3D

@onready var dia = $Dia
@onready var noche = $Noche
@onready var world_environment = $WorldEnvironment
var de_dia = true

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



func _ciclo_dia_noche():
	print (de_dia)
	de_dia =!de_dia
	if de_dia:
		dia.show()
	else:
		dia.hide()
	
	
