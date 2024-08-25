extends Control

@onready var corazon_1 = %Corazon1
@onready var corazon_2 = %Corazon2
@onready var corazon_3 = %Corazon3
@onready var coins = %Coins
@onready var game_over = %"Game Over"
@onready var timer = %Timer
@onready var color_rect = %ColorRect


var monedas: int
# Called when the node enters the scene tree for the first time.
func _ready():
	game_over.hide()
	color_rect.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	monedas = Global.dinero
	coins.text = str(monedas)
	
	if Global.vida == 3:
		corazon_1.show()
		corazon_2.show()
		corazon_3.show()
	
	if Global.vida == 2:
		corazon_1.show()
		corazon_2.show()
		corazon_3.hide()
	
	if Global.vida == 1:
		corazon_1.show()
		corazon_2.hide()
		corazon_3.hide()
	
	if Global.vida == 0:
		corazon_1.hide()
		corazon_2.hide()
		corazon_3.hide()
		game_over.show()
		color_rect.show()
		get_tree().change_scene_to_file("res://Nodes/UI/menu_principal.tscn")
		


func _on_timer_timeout():
	pass
