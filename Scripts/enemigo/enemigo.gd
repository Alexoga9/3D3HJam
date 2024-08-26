extends Area3D

@export var velocidad: int
var target_position: Vector3
@onready var personaje = %Personaje

func _ready():
	self.position = $"../Spawner".position
func _process(delta):
	target_position = (personaje.position - position).normalized()
	
	if position.distance_to(personaje.position):
		position += target_position * velocidad * delta


func jugador_entra(_body):
	Global.vida -= 1
	queue_free()
