extends CharacterBody3D

@export var velocidad_de_movimiento: int 
@export var velocidad_salto: int 
@export var vida : int

@export var inventario : Inventario

func _physics_process(delta):
	movimiento_personaje()
	
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("salto") and is_on_floor():
		velocity.y = velocidad_salto

func movimiento_personaje():
	velocity.x = Global.get_axis().x * velocidad_de_movimiento
	velocity.z = Global.get_axis().y * -velocidad_de_movimiento
	move_and_slide()
