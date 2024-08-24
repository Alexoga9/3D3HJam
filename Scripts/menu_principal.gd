extends Control


func _on_begin_pressed():
	get_tree().change_scene_to_file("Escena")


func _on_options_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
