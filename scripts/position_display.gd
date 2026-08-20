extends Control

var body_part_to_display: Global.BodyParts

func _ready() -> void:
	
	Global.load_data()
	
	
	# assign different things depending on what body part is to be displayed
	var positions: Array[Vector2]
	match body_part_to_display:
		Global.BodyParts.STOMACH:
			positions = Global.stomach_positions
			$BodyPartTexture.texture = preload("res://textures/stomach.png")
		Global.BodyParts.LEFT_LEG:
			positions = Global.left_leg_positions
			assert(false, "texture for this body part does not exist yet. Throwing an error to show that you have to add code here to assign it as the texture")
		Global.BodyParts.RIGHT_LEG:
			positions = Global.right_leg_positions
			assert(false, "texture for this body part does not exist yet. Throwing an error to show that you have to add code here to assign it as the texture")
