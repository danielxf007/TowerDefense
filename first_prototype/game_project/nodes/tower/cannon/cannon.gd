extends Sprite2D


const IDLE = 'idle'
const ATTACK = 'attack'
var state
var targets
var projectile_scene: PackedScene = load("res://nodes/projectile/projectile.tscn")


func _ready():
	targets = []
	state = IDLE

func _on_area_2d_area_entered(area):
	targets.append(area)
	change_state(ATTACK)

func _on_area_2d_area_exited(area):
	if targets:
		targets.erase(area)
	if targets:
		change_state(ATTACK)
	else:
		change_state(IDLE)

func _on_timer_timeout():
	if state == ATTACK:
		var projectile = projectile_scene.instantiate()
		add_child(projectile)
		projectile.global_position = $Marker2D.global_position
		projectile.move(targets[0].global_position)
		

func change_state(new_state):
	state = new_state

func _physics_process(_delta):
	if targets:
		var target = targets[0]
		look_at(target.global_position)

