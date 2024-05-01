extends AnimatedSprite2D

const IDLE = 'idle'
const ATTACK_H = 'attack_h'
const ATTACK_V = 'attack_v'
var state
var arrow_path: PackedScene = load("res://nodes/archer/arrow_path.tscn")
var _arrow: PackedScene = load("res://nodes/archer/arrow.tscn")
var target

# Called when the node enters the scene tree for the first time.
func _ready():
	state = ATTACK_V 
	play(state)

func change_look_dir(look_dir):
	if look_dir == 'right':
		flip_h = false
	else:
		flip_h = true

func change_state(new_state):
	state = new_state
	play(state)


func _on_animation_changed():
	if state == ATTACK_H:
		pass

func _on_animation_looped():
	if state == ATTACK_H:
		var target_location = target.global_position
		var arrow = _arrow.instantiate()
		add_child(arrow)
		arrow.set_move_dir(target_location)
