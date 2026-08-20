extends Control


func _on_button_other_pressed() -> void:
	var instance = Global.other_menu_scene.instantiate()
	add_sibling(instance)
	queue_free()


func _on_button_leg_pressed() -> void:
	if Time.get_date_dict_from_system().day % 2 == 0:
		pass
		#Global.BodyParts.RIGHT_LEG
	else:
		pass
		#Global.BodyParts.LEFT_LEG


func _on_button_stomach_pressed() -> void:
	pass
