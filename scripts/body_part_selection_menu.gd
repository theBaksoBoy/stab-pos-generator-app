extends Control

signal body_part_selected(body_part: Global.BodyParts)

func _on_button_left_leg_pressed() -> void:
	body_part_selected.emit(Global.BodyParts.LEFT_LEG)
	queue_free()

func _on_button_right_leg_pressed() -> void:
	body_part_selected.emit(Global.BodyParts.RIGHT_LEG)
	queue_free()

func _on_button_stomach_pressed() -> void:
	body_part_selected.emit(Global.BodyParts.STOMACH)
	queue_free()
