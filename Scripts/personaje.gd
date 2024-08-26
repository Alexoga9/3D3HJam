extends CharacterBody3D

@export var velocidad_de_movimiento: int 
@export var velocidad_salto: int 
@export var vida : int
@onready var ataque = $Ataque


@export var inventario : Inventario

func _ready():
	ataque.position.y = 20
	ataque.hide()

func _physics_process(delta):
	movimiento_personaje()
	
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("salto") and is_on_floor():
		velocity.y = velocidad_salto
	
	if Input.is_action_just_pressed("z"):
		ataque.position.y = 0
		ataque.show()
		$Ataque/Timer.start()

func movimiento_personaje():
	velocity.x = Global.get_axis().x * velocidad_de_movimiento
	velocity.z = Global.get_axis().y * -velocidad_de_movimiento
	move_and_slide()


func ataque_timeout():
	ataque.position.y = 20
	ataque.hide()
