extends Area3D


func enemigo_entra(area):
	if area.name == "Enemigo":
		area.queue_free()
		Global.dinero +=1
