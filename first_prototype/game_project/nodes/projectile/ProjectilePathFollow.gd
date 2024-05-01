extends PathFollow2D

func _ready():
	set_physics_process(false)

func _physics_process(delta):
	progress_ratio += 0.0001
	if progress >= 1.0:
		set_physics_process(true)

