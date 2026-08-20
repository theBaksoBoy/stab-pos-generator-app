extends Node


var main_menu_scene: PackedScene = preload("res://scenes/main_menu.tscn")
var other_menu_scene: PackedScene = preload("res://scenes/other_menu.tscn")

var position_display_scene: PackedScene = preload("res://scenes/position_display.tscn")



enum BodyParts {
	STOMACH,
	LEFT_LEG,
	RIGHT_LEG,
	AUTO_LEG,
}


const save_path: String = "user://save_data.save"
var stomach_positions: Array[Vector2] = []
var left_leg_positions: Array[Vector2] = []
var right_leg_positions: Array[Vector2] = []


## function that saves the current state of the variables that are saved 
## in Global to the save file
func save_data() -> void:
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	
	file.store_var(stomach_positions)
	file.store_var(left_leg_positions)
	file.store_var(right_leg_positions)


## function that loads the vaules in the save file and assigns them to the
## corresponding variables in Global
func load_data() -> void:
	if not FileAccess.file_exists(save_path):
		return
	var file = FileAccess.open(save_path, FileAccess.READ)
	stomach_positions = file.get_var()
	left_leg_positions = file.get_var()
	right_leg_positions = file.get_var()
