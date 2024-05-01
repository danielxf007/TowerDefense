extends AnimatedSprite2D


@onready var _animated_sprite: AnimatedSprite2D = self

func _ready():
	_animated_sprite.play("new_animation")
	_animated_sprite.flip_h = true
