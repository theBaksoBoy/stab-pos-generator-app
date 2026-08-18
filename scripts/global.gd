extends Node


enum BodyParts {
	STOMACH,
	LEFT_LEG,
	RIGHT_LEG,
	AUDO_LEG,
}


const save_path: String = "user://save_data.save"
var stomach_positions: Array = []
var left_leg_positions: Array = []
var right_leg_positions: Array = []


## function that saves the current state of the variables that are saved 
## in Global to the save file
func save_data():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(stomach_positions)
	file.store_var(left_leg_positions)
	file.store_var(right_leg_positions)


## function that loads the vaules in the save file and assigns them to the
## corresponding variables in Global
func load_data():
	if not FileAccess.file_exists(save_path):
		return
	var file = FileAccess.open(save_path, FileAccess.READ)
	stomach_positions = file.get_vars(stomach_positions)
	left_leg_positions = file.get_vars(left_leg_positions)
	right_leg_positions = file.get_vars(right_leg_positions)
