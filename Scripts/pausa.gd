extends Control

var pausado = true


func _process(_delta):
	if  Input.is_action_just_pressed("pausa"):
		PausaMenu()


func PausaMenu():
	if !pausado:
		self.hide()
		Engine.time_scale = 1
	else:
		self.show()
		Engine.time_scale = 0
	pausado = !pausado


func _on_resume_pressed():
	PausaMenu()


func _on_exit_pressed():
	get_tree().quit()
