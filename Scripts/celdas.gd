extends Panel

@onready var item_display: Sprite2D = $Item_display


func actualizar(item: item_en_inventario):
	if !item:
		item_display.visible = false
	else:
		item_display.visible = true
		item_display.texture = item.texture
