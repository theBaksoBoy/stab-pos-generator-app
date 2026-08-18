extends Control


func _on_button_back_pressed() -> void:
	var instance = Global.main_menu_scene.instantiate()
	add_sibling(instance)
	queue_free()
