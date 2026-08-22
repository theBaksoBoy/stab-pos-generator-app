extends Control

var body_part_to_display: Global.BodyParts
var position_markers: Array[Control]

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
	
	# instantiate all the position markers
	for i in positions.size():
		var instance := Global.position_marker_scene.instantiate()
		instance.normalized_position = positions[i]
		instance.is_stab_position = (i == 0)
		instance.position_index = i
		position_markers.append(instance)
		add_child(instance)


func _process(_delta: float) -> void:
	
	var window_size: Vector2 = get_viewport().get_visible_rect().size
	
	# (all the illustrations should have a ratio of 1:1.5)
	var position_based_off_of_width: bool = window_size.y / window_size.x > 1.5
	var position_multiplier: float
	if position_based_off_of_width:
		position_multiplier = window_size.x
	else:
		position_multiplier = window_size.y / 1.5

	
	for position_marker in position_markers:
		position_marker.position = position_marker.normalized_position * position_multiplier
