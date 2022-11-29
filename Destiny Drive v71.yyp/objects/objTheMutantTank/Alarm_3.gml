
	var babooom = instance_create(x, y, objTheMutantBigFlak)

	with(babooom) {
		damage = 1
		angle = point_direction(x, y, 0, road_random())
		spd = 3
	}
	
	if instance_number(objTheMutantBigFlak) < 2 alarm[3] = 40
	
	