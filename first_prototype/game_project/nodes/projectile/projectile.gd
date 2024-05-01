extends Sprite2D

const SPEED = 100
var move_dir
# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(false)


func move(target_pos):
	move_dir = (target_pos-global_position).normalized()
	look_at(target_pos)
	set_physics_process(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	global_position += move_dir*SPEED*delta
	
