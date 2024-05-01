extends Node
signal finished_summoning

var monsters = 10
var path = load("res://paths/path.tres")
var monster_path: PackedScene = load("res://nodes/monster_path/monster_path.tscn")

func summon():
	var monster = monster_path.instantiate()
	monster.curve = path
	add_child(monster)
	monsters -= 1
	emit_signal("finished_summoning")



func _on_timer_timeout():
	if monsters > 0:
		summon()
