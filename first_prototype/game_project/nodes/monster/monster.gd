extends Sprite2D

const DIMENSIONS = Vector2(64, 64)

# Called when the node enters the scene tree for the first time.
func _ready():
	var texture_sz = texture.get_size()
	scale = DIMENSIONS / texture_sz
