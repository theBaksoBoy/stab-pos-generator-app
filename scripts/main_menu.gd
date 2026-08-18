extends Control


func _on_button_other_pressed() -> void:
	var instance = Global.other_menu_scene.instantiate()
	add_sibling(instance)
	queue_free()
