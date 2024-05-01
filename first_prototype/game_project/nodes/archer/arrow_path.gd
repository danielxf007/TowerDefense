extends Path2D

func curve(pi, pf, n_points=2):
	var curve_2d = Curve2D.new()
	curve_2d.add_point(pi)
	curve_2d.add_point(pf)
	return curve_2d

func set_path_curve(pi, pf, n_points=1000):
	print('PI', pi)
	print('PF', pf)
	set_curve(curve(pi, pf , n_points))
	$ArrowPathFollow.set_process(true)
