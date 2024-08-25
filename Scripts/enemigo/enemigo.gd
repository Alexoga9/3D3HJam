extends CharacterBody3D

@export var velocidad: int
var player_position
@onready var personaje = %Personaje

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	player_position = ((personaje.position - self.position)).normalized
	
	if position.distance_to(personaje.position) > 3:
		move_and_slide()
		look_at(personaje.position)


func jugador_entra(_body):
	Global.vida -= 1
