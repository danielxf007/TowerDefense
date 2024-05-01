extends Sprite2D


const SPEED = 0.5
var move_dir 

func _ready():
	set_physics_process(false)

func set_move_dir(pos):
	look_at(pos)
	global_position = pos
