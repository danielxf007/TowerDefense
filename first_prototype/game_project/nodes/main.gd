extends Node


# Called when the node enters the scene tree for the first time.
var waves = 3

func set_up():
	pass

func play():
	pass

func end():
	pass

func _ready():
	print($TileMap.get_used_cells(0))
