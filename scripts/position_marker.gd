extends Control


var normalized_position: Vector2
var is_stab_position: bool
var position_index: int

var final_stab_marker_size: Vector2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(50, 50)
	$PreviousPosition.visible = not is_stab_position
	$StabPosition.visible = is_stab_position
	
	if is_stab_position:
		final_stab_marker_size = scale
		scale = Vector2.ONE * 10
	else:
		modulate = Color(1, 1, 1, clamp((position_index*0.1 - 1.1) * (position_index*0.1 - 1.1), 0, 1))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if is_stab_position:
		rotation += delta
		if scale.x > final_stab_marker_size.x:
			scale -= Vector2.ONE * delta * 13
		else:
			scale = final_stab_marker_size
