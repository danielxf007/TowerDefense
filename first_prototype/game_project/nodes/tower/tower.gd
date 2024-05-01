extends Sprite2D

const DIMENSIONS = Vector2(64, 64)
const IDLE = 'idle'
const ATTACK = 'attack_h'
var state
var targets
var archers

# Called when the node enters the scene tree for the first time.
func _ready():
	var texture_sz = texture.get_size()
	scale = DIMENSIONS / texture_sz
	state = IDLE
	targets = []
	archers = [$Archer, null]

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
	if targets:
		for archer in archers:
			if archer:
				archer.change_state('attack_h')

func change_state(new_state):
	state = new_state
	for archer in archers:
		if targets and archer:
			archer.target = targets[0]
			archer.change_state(new_state)
