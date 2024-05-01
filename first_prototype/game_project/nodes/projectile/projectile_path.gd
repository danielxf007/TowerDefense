extends Path2D

func _ready():
	$ProjectilePathFollow/Projectile.hide()

func move(target_pos):
	var _curve: Curve2D = Curve2D.new()
	_curve.add_point(Vector2())
	_curve.add_point(target_pos+Vector2(64, 64))
	set_curve(_curve)
	$ProjectilePathFollow/Projectile.show()
	$ProjectilePathFollow.set_physics_process(true)
