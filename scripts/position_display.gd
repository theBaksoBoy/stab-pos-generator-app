extends Control

var body_part_to_display: Global.BodyParts

func _ready() -> void:
	
	Global.load_data()
	
	# assign the speific leg to use when it is on auto
	if body_part_to_display == Global.BodyParts.AUTO_LEG:
		if Time.get_date_dict_from_system().day % 2 == 0:
			body_part_to_display = Global.BodyParts.RIGHT_LEG
		else:
			body_part_to_display = Global.BodyParts.LEFT_LEG
	
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

todo!
# make a loop where it adds points (that update their position each frame) on the image
